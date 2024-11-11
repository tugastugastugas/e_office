<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\ActivityLog;
use App\Models\Folder;
use App\Models\File;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;


class FolderController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function folder()
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Masuk ke Folder.',
        ]);
        $folder = Folder::orderBy('created_at', 'desc')->get();


        echo view('header');
        echo view('menu');
        echo view('folder', compact('folder'));
        echo view('footer');
    }
    public function buat_folder(Request $request)
    {
        // Logging aktivitas awal
        Log::info('Memulai proses buat_folder oleh user ID: ' . Session::get('id'));

        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Membuat Folder.',
        ]);

        try {
            $request->validate([
                'nama_folder' => 'required',
            ]);

            // Mendapatkan id_user dari session
            $id_user = Session::get('id');

            // Simpan data ke tabel surat
            $folder = new Folder();
            $folder->nama_folder = $request->input('nama_folder');

            // Simpan ke database
            $folder->save();

            // Redirect ke halaman lain
            return redirect()->back()->with('success', 'Folder berhasil ditambahkan.');
        } catch (\Exception $e) {
            // Log error detail
            Log::error('Gagal menyimpan surat: ' . $e->getMessage());

            // Redirect kembali dengan pesan kesalahan
            return redirect()->back()->withErrors(['msg' => 'Gagal menambahkan surat. Silakan coba lagi.']);
        }
    }

    public function lihat_folder($id)
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Melihat Folder.',
        ]);
        // Mencari pengguna berdasarkan ID
        // $folder = Folder::findOrFail($id);
        $folder = DB::table('file')
            ->join('folder', 'folder.id_folder', '=', 'file.id_folder')
            ->select(
                'folder.id_folder',
                'folder.nama_folder',
                'file.nama_file',
                'file.id_file',
            )
            ->where('folder.id_folder', $id)  // Mengambil data sesuai session id_user
            ->get();



        // Mengembalikan view dengan data pengguna dan level
        echo view('header');
        echo view('menu');
        echo view('lihat_folder', compact('folder', 'id'));
        echo view('footer');
    }

    public function file_destroy($id)
    {
        ActivityLog::create([
            'action' => 'create',
            'user_id' => Session::get('id'), // ID pengguna yang sedang login
            'description' => 'User Menghapus Folder.',
        ]);

        // Cari data user berdasarkan ID
        $file = File::findOrFail($id);

        // Hapus data user (soft delete)
        $file->delete();

        // Redirect dengan pesan sukses
        return redirect()->back()->with('success', 'Data user berhasil dihapus');
    }

    public function store(Request $request, $id_folder)
    {
        $request->validate([
            'nama_file' => 'required|string|max:255',
            'file_upload' => 'required|file'
        ]);

        // Ambil nama file yang diinput pengguna
        $namaFileAsli = $request->input('nama_file');
        // Ekstensi file asli
        $extension = $request->file('file_upload')->getClientOriginalExtension();
        // Buat nama lengkap file dengan ekstensi
        $namaFileLengkap = $namaFileAsli . '.' . $extension;

        // Simpan file ke dalam folder 'uploads' dengan nama sesuai input
        $path = $request->file('file_upload')->storeAs('uploads', $namaFileLengkap);

        // Simpan informasi file di database
        File::create([
            'nama_file' => $namaFileLengkap,
            'id_folder' => $id_folder,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return redirect()->back()->with('success', 'File berhasil diupload.');
    }


    public function download($id_file)
    {
        Log::info("Proses download dimulai untuk ID file: {$id_file}");

        // Cari file di database
        $file = File::find($id_file);

        if (!$file) {
            Log::error("File dengan ID {$id_file} tidak ditemukan di database.");
            return redirect()->back()->with('error', 'File tidak ditemukan di database.');
        }

        // Pastikan path mengarah ke direktori 'uploads'
        $filePath = storage_path('app/uploads/' . $file->nama_file);
        Log::info("Path file: {$filePath}");

        // Cek apakah file ada di server
        if (file_exists($filePath)) {
            Log::info("File ditemukan, memulai download untuk file: {$file->nama_file}");
            return response()->download($filePath, $file->nama_file);
        } else {
            Log::error("File tidak ditemukan di path yang ditentukan: {$filePath}");
            return redirect()->back()->with('error', 'File tidak ditemukan di server.');
        }
    }
}
