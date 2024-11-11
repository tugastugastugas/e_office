<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\ActivityLog;
use App\Models\User;
use App\Models\Cuti;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;


class CutiController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function cuti()
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Masuk ke Pengajuan Cuti.',
        ]);
        $cuti = DB::table('cuti')
            ->join('user', 'user.id_user', '=', 'cuti.id_user')
            ->select(
                'cuti.tanggal_cuti',
                'cuti.jumlah_hari',
                'cuti.alasan_cuti',
                'cuti.id_user',
                'cuti.id_cuti',
                'cuti.status',
                'user.username',
            )
            ->get();

        echo view('header');
        echo view('menu');
        echo view('cuti', compact('cuti'));
        echo view('footer');
    }
    public function buat_cuti(Request $request)
    {
        // Logging aktivitas awal
        Log::info('Memulai proses buat_folder oleh user ID: ' . Session::get('id'));

        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Membuat Pengajuan Cuti.',
        ]);

        try {
            $request->validate([
                'tanggal_cuti' => 'required',
                'jumlah_hari' => 'required',
                'alasan_cuti' => 'required',
            ]);

            // Mendapatkan id_user dari session
            $id_user = Session::get('id');

            // Simpan data ke tabel surat
            $cuti = new Cuti();
            $cuti->tanggal_cuti = $request->input('tanggal_cuti');
            $cuti->jumlah_hari = $request->input('jumlah_hari');
            $cuti->alasan_cuti = $request->input('alasan_cuti');
            $cuti->status = 'Pending';
            $cuti->id_user = $id_user;


            // Simpan ke database
            $cuti->save();

            // Redirect ke halaman lain
            return redirect()->back()->with('success', 'Folder berhasil ditambahkan.');
        } catch (\Exception $e) {
            // Log error detail
            Log::error('Gagal menyimpan surat: ' . $e->getMessage());

            // Redirect kembali dengan pesan kesalahan
            return redirect()->back()->withErrors(['msg' => 'Gagal menambahkan surat. Silakan coba lagi.']);
        }
    }


    public function cuti_destroy($id)
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Menghapus Pengajuan Cuti.',
        ]);

        // Cari data user berdasarkan ID
        $cuti = cuti::findOrFail($id);

        // Hapus data user (soft delete)
        $cuti->delete();

        // Redirect dengan pesan sukses
        return redirect()->back()->with('success', 'Data user berhasil dihapus');
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'tanggal_cuti' => 'required|date',
            'jumlah_hari' => 'required|integer',
            'alasan_cuti' => 'required|string',
        ]);

        $cuti = Cuti::findOrFail($id);
        $cuti->tanggal_cuti = $request->tanggal_cuti;
        $cuti->jumlah_hari = $request->jumlah_hari;
        $cuti->alasan_cuti = $request->alasan_cuti;
        $cuti->save();

        return redirect()->back()->with('success', 'Pengajuan cuti berhasil diperbarui');
    }

    public function setuju($id)
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Menyetujui Pengajuan Cuti.',
        ]);

        $cuti = Cuti::findOrFail($id);
        $cuti->status = 'Setuju'; // Mengubah status menjadi Setuju
        $cuti->save();

        return redirect()->back()->with('success', 'Status cuti berhasil diubah menjadi Setuju.');
    }

    public function konfirmasi($id)
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Mengkonfirmasi Pengajuan Cuti.',
        ]);

        $cuti = Cuti::findOrFail($id);
        $cuti->status = 'Konfirmasi'; // Mengubah status menjadi Konfirmasi
        $cuti->save();

        return redirect()->back()->with('success', 'Status cuti berhasil diubah menjadi Konfirmasi.');
    }
}
