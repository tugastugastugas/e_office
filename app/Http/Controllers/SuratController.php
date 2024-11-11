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
                'nomor_surat' => 'required',
                'topik_surat' => 'required',
                'isi_surat' => 'required',
                'penerima' => 'required',
            ]);

            // Mendapatkan id_user dari session
            $id_user = Session::get('id');

            // Simpan data ke tabel surat
            $surat = new Surat();
            $surat->nomor_surat = $request->input('nomor_surat');
            $surat->topik_surat = $request->input('topik_surat');
            $surat->isi_surat = $request->input('isi_surat');
            $surat->penerima = $request->input('penerima');
            $surat->id_user = $id_user; // Memasukkan id_user ke dalam model


            // Simpan ke database
            $surat->save();

            // Redirect ke halaman lain
            return redirect()->route('surat')->with('success', 'Surat berhasil ditambahkan.');
        } catch (\Exception $e) {
            // Log error detail
            Log::error('Gagal menyimpan surat: ' . $e->getMessage());

            // Redirect kembali dengan pesan kesalahan
            return redirect()->back()->withErrors(['msg' => 'Gagal menambahkan surat. Silakan coba lagi.']);
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
                'surat.topik_surat',
                'surat.isi_surat',
                'surat.penerima',
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
                'surat.nomor_surat',
                'surat.topik_surat',
                'surat.isi_surat',
                'surat.penerima',
                'surat.created_at',
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
