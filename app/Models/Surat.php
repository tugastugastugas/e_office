<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Surat extends Model
{
    use HasFactory;

    protected $table = 'surat';
    protected $primaryKey = 'id_surat';
    protected $fillable = [
        'nomor_surat',
        'topik_surat',
        'isi_surat',
        'path_surat',
        'id_user',
        'penerima',
        'created_at',
        'updated_at'
    ];
}
