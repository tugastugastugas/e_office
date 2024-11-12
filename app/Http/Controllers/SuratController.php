<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\ActivityLog;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use App\Models\Surat;
use App\Models\User;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use Brevo\Client\Api\TransactionalEmailsApi;
use Brevo\Client\Model\SendSmtpEmail;
use Brevo\Client\Configuration;
use GuzzleHttp\Client;
use App\Mail\SuratKeluarMail;
use Illuminate\Support\Facades\Mail;


class SuratController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function surat()
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User  Masuk ke Surat.',
        ]);

        echo view('header');
        echo view('menu');
        echo view('surat');
        echo view('footer');
    }

    public function buat_surat(Request $request)
    {
        // Logging aktivitas awal
        Log::info('Memulai proses buat_surat oleh user ID: ' . Session::get('id'));

        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Membuat Surat.',
        ]);

        try {
            $request->validate([
                'nomor_surat' => 'required|unique:surat,nomor_surat',
                'topik_surat' => 'required',
                'file_surat' => 'required|mimes:pdf,doc,docx|max:5120', // maks 5MB
                'penerima' => 'required',
            ]);

            // Mendapatkan id_user dari session
            $id_user = Session::get('id');

            // Proses upload file
            if ($request->hasFile('file_surat')) {
                $file = $request->file('file_surat');
                $namaFile = time() . '_' . $file->getClientOriginalName();
                $path = $file->storeAs('uploads/surat', $namaFile, 'public');

                // Simpan data ke tabel surat
                $surat = new Surat();
                $surat->nomor_surat = $request->input('nomor_surat');
                $surat->topik_surat = $request->input('topik_surat');
                $surat->isi_surat = $namaFile; // Simpan nama file
                $surat->path_surat = $path; // Simpan path file
                $surat->penerima = $request->input('penerima');
                $surat->id_user = $id_user; // Memasukkan id_user ke dalam model

                // Simpan ke database
                $surat->save();

                // Log aktivitas berhasil
                Log::info('Surat berhasil dibuat oleh user ID: ' . $id_user);

                // Redirect ke halaman lain
                return redirect()->route('surat')->with('success', 'Surat berhasil ditambahkan.');
            } else {
                throw new \Exception('File surat tidak ditemukan');
            }
        } catch (\Illuminate\Validation\ValidationException $e) {
            // Handle validation errors
            Log::error('Validasi gagal: ' . $e->getMessage());
            return redirect()->back()
                ->withErrors($e->validator)
                ->withInput();
        } catch (\Exception $e) {
            // Log error detail
            Log::error('Gagal menyimpan surat: ' . $e->getMessage());

            // Redirect kembali dengan pesan kesalahan
            return redirect()->back()
                ->with('error', 'Gagal menambahkan surat. ' . $e->getMessage())
                ->withInput();
        }
    }



    public function surat_keluar()
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User  Masuk ke Surat Keluar.',
        ]);

        $id_user = Session::get('id');
        // Query menggunakan Query Builder untuk mengambil data event dan relasinya
        $surat_keluar = DB::table('surat_keluar')
            ->join('surat', 'surat_keluar.id_surat', '=', 'surat.id_surat')
            ->join('user', 'surat.id_user', '=', 'user.id_user')
            ->select(
                'surat.id_surat',
                'surat.nomor_surat',
                'surat_keluar.id_surat_keluar',
                'surat.topik_surat',
                'surat.isi_surat',
                'surat.penerima',
                'surat.path_surat',
                'surat.created_at',
            )
            ->where('user.id_user', $id_user)  // Mengambil data sesuai session id_user
            ->get();

        // Mengirimkan data ke view
        echo view('header');
        echo view('menu');
        echo view('surat_keluar', compact('surat_keluar')); // Halaman untuk scan barcode
        echo view('footer');
    }

    public function surat_masuk()
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User  Masuk ke Surat Masuk.',
        ]);

        $level = Session::get('level');

        // Query menggunakan Query Builder untuk mengambil data surat masuk dan relasinya
        $surat_masuk = DB::table('surat_masuk')
            ->join('surat', 'surat_masuk.id_surat', '=', 'surat.id_surat')
            ->join('user', 'surat.id_user', '=', 'user.id_user')
            ->select(
                'surat.id_surat',
                'surat_masuk.id_surat_masuk',
                'surat.nomor_surat',
                'surat.topik_surat',
                'surat.isi_surat',
                'surat.penerima',
                'surat.created_at',
                'surat.path_surat',
                'user.username',
                'user.level'
            )
            ->where('surat.penerima', '=', $level)  // Filter berdasarkan level penerima
            ->get();


        // Mengirimkan data ke view
        echo view('header');
        echo view('menu');
        echo view('surat_masuk', compact('surat_masuk')); // Halaman untuk scan barcode
        echo view('footer');
    }

    public function downloadSurat($id_surat)
    {
        try {
            // Cari surat berdasarkan ID
            $surat = Surat::findOrFail($id_surat);

            // Pastikan path surat ada
            if (!$surat->path_surat) {
                return redirect()->back()->with('error', 'File surat tidak ditemukan.');
            }

            // Path file lengkap
            $filePath = storage_path('app/public/' . $surat->path_surat);

            // Cek apakah file benar-benar ada
            if (!file_exists($filePath)) {
                return redirect()->back()->with('error', 'File tidak ditemukan di sistem.');
            }

            // Log aktivitas download
            ActivityLog::create([
                'action' => 'download',
                'user_id' => Session::get('id'),
                'description' => "Download surat dengan nomor: {$surat->nomor_surat}"
            ]);

            // Download file
            return response()->download(
                $filePath,
                $surat->nomor_surat . '_' . basename($surat->path_surat),
                [
                    'Content-Type' => mime_content_type($filePath)
                ]
            );
        } catch (\Exception $e) {
            // Log error
            Log::error('Gagal download surat: ' . $e->getMessage());

            // Redirect dengan pesan error
            return redirect()->back()->with('error', 'Gagal mendownload surat. ' . $e->getMessage());
        }
    }

    public function kirimSurat($id)
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => "User  Mengirim Surat dengan id_surat.: $id",
        ]);

        Log::info("Kirim surat berhasil dipanggil dengan ID: $id");

        // Ambil detail surat berdasarkan ID
        $surat = Surat::find($id);
        $emails = User::where('level', $surat->penerima)->pluck('email')->toArray();

        // Cek apakah ada penerima
        if (!empty($emails)) {
            // Kirim email ke setiap penerima
            foreach ($emails as $email) {
                Mail::to($email)->send(new SuratKeluarMail($surat));
            }

            return response()->json(['success' => true, 'message' => 'Surat berhasil dikirim']);
        } else {
            Log::error("Tidak ada email untuk penerima: {$surat->penerima}");
            return response()->json(['success' => false, 'message' => 'Tidak ada penerima email']);
        }
    }
}
