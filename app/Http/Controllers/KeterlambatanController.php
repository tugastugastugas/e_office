<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\ActivityLog;
use App\Models\User;
use App\Models\Keterlambatan;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;


class KeterlambatanController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function keterlambatan()
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Masuk ke Pengajuan Keterlambatan.',
        ]);

        $keterlambatan = DB::table('keterlambatan')
            ->join('user', 'user.id_user', '=', 'keterlambatan.id_user')
            ->select(
                'keterlambatan.tanggal_telat',
                'keterlambatan.jam_masuk',
                'keterlambatan.total_telat',
                'keterlambatan.alasan_telat',
                'keterlambatan.id_user',
                'keterlambatan.id_telat',
                'keterlambatan.status',
                'user.username',
            )
            ->get();

        echo view('header');
        echo view('menu');
        echo view('keterlambatan', compact('keterlambatan'));
        echo view('footer');
    }
    public function buat_keterlambatan(Request $request)
    {
        // Logging aktivitas awal
        Log::info('Memulai proses buat_folder oleh user ID: ' . Session::get('id'));

        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Membuat Pengajuan Keterlambatan.',
        ]);

        try {
            $request->validate([
                'tanggal_telat' => 'required',
                'jam_masuk' => 'required',
                'total_telat' => 'required',
                'alasan_telat' => 'required',
            ]);

            // Mendapatkan id_user dari session
            $id_user = Session::get('id');

            // Simpan data ke tabel surat
            $keterlambatan = new Keterlambatan();
            $keterlambatan->tanggal_telat = $request->input('tanggal_telat');
            $keterlambatan->jam_masuk = $request->input('jam_masuk');
            $keterlambatan->total_telat = $request->input('total_telat');
            $keterlambatan->alasan_telat = $request->input('alasan_telat');
            $keterlambatan->status = 'Pending';
            $keterlambatan->id_user = $id_user;


            // Simpan ke database
            $keterlambatan->save();

            // Redirect ke halaman lain
            return redirect()->back()->with('success', 'Folder berhasil ditambahkan.');
        } catch (\Exception $e) {
            // Log error detail
            Log::error('Gagal menyimpan surat: ' . $e->getMessage());

            // Redirect kembali dengan pesan kesalahan
            return redirect()->back()->withErrors(['msg' => 'Gagal menambahkan surat. Silakan coba lagi.']);
        }
    }

    public function keterlambatan_destroy($id)
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Menghapus Pengajuan Keterlambatan.',
        ]);

        // Cari data user berdasarkan ID
        $keterlambatan = Keterlambatan::findOrFail($id);

        // Hapus data user (soft delete)
        $keterlambatan->delete();

        // Redirect dengan pesan sukses
        return redirect()->back()->with('success', 'Data user berhasil dihapus');
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'tanggal_telat' => 'required|date',
            'jam_masuk' => 'required|date_format:H:i',
            'total_telat' => 'required|string',
            'alasan_telat' => 'required|string',
        ]);

        $keterlambatan = keterlambatan::findOrFail($id);
        $keterlambatan->tanggal_telat = $request->tanggal_telat;
        $keterlambatan->jam_masuk = $request->jam_masuk;
        $keterlambatan->total_telat = $request->total_telat;
        $keterlambatan->alasan_telat = $request->alasan_telat;
        $keterlambatan->save();

        return redirect()->back()->with('success', 'Pengajuan cuti berhasil diperbarui');
    }

    public function setuju($id)
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Menyetujui Pengajuan Keterlambatan.',
        ]);

        $keterlambatan = Keterlambatan::findOrFail($id);
        $keterlambatan->status = 'Setuju'; // Mengubah status menjadi Setuju
        $keterlambatan->save();

        return redirect()->back()->with('success', 'Status cuti berhasil diubah menjadi Setuju.');
    }

    public function konfirmasi($id)
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Mengkonfirmasi Pengajuan Keterlambatan.',
        ]);

        $keterlambatan = Keterlambatan::findOrFail($id);
        $keterlambatan->status = 'Konfirmasi'; // Mengubah status menjadi Setuju
        $keterlambatan->save();

        return redirect()->back()->with('success', 'Status cuti berhasil diubah menjadi Konfirmasi.');
    }
}
