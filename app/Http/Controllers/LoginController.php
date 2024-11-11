<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request; // Tambahkan ini
use App\Models\User;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Log;

class LoginController extends Controller
{
    public function login()
    {
        echo view('login');
    }

    public function aksi_login(Request $request)
    {
        // Validasi input
        $request->validate([
            'username' => 'required|string',
            'password' => 'required|string',
            'backup_captcha' => 'required_if:backup_captcha,!=,null',
        ]);

        Log::info('Login attempt', $request->all());
        Log::info('Session ID: ' . session_id());
        Log::info('Session values: ' . json_encode(session()->all())); // Cek semua session

        if ($request->filled('backup_captcha')) {
            $sessionCaptcha = Session::get('captcha');
            // Menggunakan facade Session

            Log::info('User backup captcha input: ' . $request->backup_captcha);
            Log::info('Session captcha value: ' . $sessionCaptcha);

            if ($request->backup_captcha !== $sessionCaptcha) {
                Log::warning('Invalid CAPTCHA input by user: ' . $request->backup_captcha);
                return back()->withErrors(['backup_captcha' => 'Invalid CAPTCHA'])->withInput();
            }
        }

        $user = User::where('username', $request->username)->first();

        if ($user) {
            Log::info('User found: ' . $user->username);
        } else {
            Log::warning('User not found for username: ' . $request->username);
        }

        if ($user && md5($request->password, $user->password)) {
            Session::put('id', $user->id_user);
            Session::put('level', $user->level);
            Session::put('username', $user->username);
            Log::info('Login successful for user: ' . $user->username);
            return redirect()->route('dashboard')->with('success', 'Login successful');
        } else {
            Log::warning('Login failed for username: ' . $request->username);
            return back()->withErrors(['loginError' => 'Invalid username or password'])->withInput();
        }
    }

    public function logout()
    {
        Session::flush(); // Hapus semua session
        return redirect()->route('login')->with('success', 'Logout successful');
    }

    public function register()
    {

        echo view('register');
    }

    public function tambah_akun(Request $request)
    {
        try {
            // Validasi inputan
            $request->validate([
                'username' => 'required',
                'password' => 'required',
                'email' => 'required',
            ]);

            // Simpan data ke tabel user
            $user = new User(); // Ubah variabel dari $quiz menjadi $user untuk kejelasan
            $user->username = $request->input('username');
            $user->password = md5($request->input('password')); // Enkripsi password
            $user->email = $request->input('email');
            $user->level = 'Admin'; // Tetapkan level ke "Murid"

            // Simpan ke database
            $user->save();

            // Redirect ke halaman lain
            return redirect()->route('login')->with('success', 'Akun berhasil ditambahkan.'); // Menambahkan flash message untuk feedback
        } catch (\Exception $e) {
            Log::error('Gagal mengembalikan data pengguna: ' . $e->getMessage());
            // Redirect kembali dengan pesan kesalahan
            return redirect()->back()->withErrors(['msg' => 'Gagal menambahkan akun. Silakan coba lagi.']);
        }
    }
}
