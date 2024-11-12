<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\SettingController;
use App\Http\Controllers\LogController;
use App\Http\Controllers\SuratController;
use App\Http\Controllers\UserLevelController;
use App\Http\Controllers\FolderController;
use App\Http\Controllers\CutiController;
use App\Http\Controllers\KeterlambatanController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\RestoreEditController;
use App\Http\Controllers\RestoreDeleteController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', [Controller::class, 'dashboard'])->name('dashboard');
Route::get('/login', [LoginController::class, 'login'])->name('login');
Route::post('/aksi_login', [LoginController::class, 'aksi_login'])->name('aksi_login');
Route::get('/register', [LoginController::class, 'register'])->name('register');
Route::get('/logout', [LoginController::class, 'logout'])->name('logout');
Route::post('/tambah_akun', [LoginController::class, 'tambah_akun'])->name('tambah_akun');


// ROUTE SETTING
Route::get('settings', [SettingController::class, 'edit'])
    ->middleware('check.permission:setting')
    ->name('settings.edit');
Route::post('settings', [SettingController::class, 'update'])
    ->name('settings.update');

// ROUTE LOG ACTIVITY
Route::get('log', [LogController::class, 'index'])
    ->middleware('check.permission:setting')
    ->name('log');

// ROUTE PERMISSION
Route::get('/user-levels', [UserLevelController::class, 'index'])
    ->middleware('check.permission:setting')
    ->name('user.levels');
Route::get('/menu-permissions/{userLevel}', [UserLevelController::class, 'showMenuPermissions'])
    ->name('menu.permissions');
Route::post('/save-permissions', [UserLevelController::class, 'savePermissions'])
    ->name('save.permissions');

// ROUTE USER
Route::get('/user', [UserController::class, 'user'])
    ->middleware('check.permission:setting')
    ->name('user');
Route::post('/t_user', [UserController::class, 't_user'])->name('t_user');
Route::post('/user/reset-password/{id}', [UserController::class, 'resetPassword'])->name('user.resetPassword');
Route::post('/user/update', [UserController::class, 'updateDetail'])->name('update.user');
Route::delete('/user/{id_user}', [UserController::class, 'user_destroy'])->name('user.destroy');
Route::get('/user/detail/{id}', [UserController::class, 'detail'])->name('detail');

// ROUTE RESTORE EDIT
Route::get('/restore_e', [RestoreEditController::class, 'restore_e'])
    ->middleware('check.permission:setting')
    ->name('restore_e');
Route::post('/user/restore/{id_user}', [RestoreEditController::class, 'restoreEdit'])->name('user.restoreEdit');
Route::delete('/user_history/{id_user_history}', [RestoreEditController::class, 're_destroy'])->name('re.destroy');

// ROUTE RESTORE DELETE
Route::get('/restore_d', [RestoreDeleteController::class, 'restore_d'])
    ->middleware('check.permission:setting')
    ->name('restore_d');
Route::post('/user/restore/{id}', [RestoreDeleteController::class, 'user_restore'])->name('user.restore');
Route::delete('/user/{id}', [RestoreDeleteController::class, 'rd_destroy'])->name('rd.destroy');

// ROUTE SURAT
Route::get('surat', [SuratController::class, 'surat'])
    ->middleware('check.permission:surat')
    ->name('surat');
Route::post('buat_surat', [SuratController::class, 'buat_surat'])
    ->name('buat_surat');
Route::get('surat_keluar', [SuratController::class, 'surat_keluar'])
    ->middleware('check.permission:surat')
    ->name('surat_keluar');
Route::get('surat_masuk', [SuratController::class, 'surat_masuk'])
    ->middleware('check.permission:surat')
    ->name('surat_masuk');
Route::post('/kirim-surat/{id}', [SuratController::class, 'kirimSurat']);
Route::get('/download-surat/{id_surat}', [SuratController::class, 'downloadSurat'])
    ->name('download.surat');

// ROUTE DOKUMEN
Route::get('folder', [FolderController::class, 'folder'])
    ->middleware('check.permission:dokumen')
    ->name('folder');
Route::post('buat_folder', [FolderController::class, 'buat_folder'])
    ->name('buat_folder');
Route::get('/folder/lihat_folder/{id}', [FolderController::class, 'lihat_folder'])
    ->middleware('check.permission:dokumen')
    ->name('lihat_folder');
Route::delete('/file/{id_file}', [FolderController::class, 'file_destroy'])->name('file.destroy');
Route::post('/folder/{id_folder}/upload', [FolderController::class, 'store'])->name('file.store');
Route::get('/file/download/{id_file}', [FolderController::class, 'download'])->name('file.download');
Route::post('/update-access', [FolderController::class, 'updateAccess'])->name('update_access');
Route::delete('/folder/{id_folder}', [FolderController::class, 'folder_destroy'])->name('folder.destroy');


// ROUTE CUTI
Route::get('cuti', [CutiController::class, 'cuti'])
    ->middleware('check.permission:pengajuan')
    ->name('cuti');
Route::post('buat_cuti', [CutiController::class, 'buat_cuti'])
    ->name('buat_cuti');
Route::delete('/cuti/{id_cuti}', [CutiController::class, 'cuti_destroy'])->name('cuti.destroy');
Route::get('/cuti/update/{id}', [CutiController::class, 'update'])->name('cuti.update');
Route::post('/cuti/{id}/setuju', [CutiController::class, 'setuju'])->name('setuju.cuti');
Route::post('/cuti/{id}/konfirmasi', [CutiController::class, 'konfirmasi'])->name('konfirmasi.cuti');

// ROUTE keterlambatan
Route::get('keterlambatan', [KeterlambatanController::class, 'keterlambatan'])
    ->middleware('check.permission:pengajuan')
    ->name('keterlambatan');
Route::post('buat_keterlambatan', [KeterlambatanController::class, 'buat_keterlambatan'])
    ->name('buat_keterlambatan');
Route::delete('/keterlambatan/{id_keterlambatan}', [KeterlambatanController::class, 'keterlambatan_destroy'])->name('keterlambatan.destroy');
Route::get('/keterlambatan/update/{id}', [KeterlambatanController::class, 'update'])->name('keterlambatan.update');
Route::post('/keterlambatan/{id}/setuju', [KeterlambatanController::class, 'setuju'])->name('setuju.keterlambatan');
Route::post('/keterlambatan/{id}/konfirmasi', [KeterlambatanController::class, 'konfirmasi'])->name('konfirmasi.keterlambatan');
