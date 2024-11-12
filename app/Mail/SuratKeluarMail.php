<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Log;

class SuratKeluarMail extends Mailable
{
    use Queueable, SerializesModels;

    public $surat;

    public function __construct($surat)
    {
        $this->surat = $surat;
    }

    public function build()
    {
        $email = $this->from(config('mail.from.address'))
            ->subject('Surat Keluar: ' . $this->surat->topik_surat)
            ->view('emails.surat_keluar')
            ->with([
                'nomor_surat' => $this->surat->nomor_surat,
                'topik_surat' => $this->surat->topik_surat,
                'isi_surat' => $this->surat->isi_surat,
            ]);

        // Gunakan path lengkap yang spesifik
        $fullPath = storage_path('app/public/uploads/surat/' . basename($this->surat->path_surat));

        Log::info('Full Path: ' . $fullPath);

        if (file_exists($fullPath)) {
            $email->attach($fullPath, [
                'as' => basename($this->surat->path_surat),
                'mime' => mime_content_type($fullPath)
            ]);
        } else {
            Log::error('File not found: ' . $fullPath);
        }

        return $email;
    }
}
