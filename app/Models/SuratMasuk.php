<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SuratMasuk extends Model
{
    use HasFactory;

    protected $table = 'surat_masuk';
    protected $primaryKey = 'id_surat_masuk';
    protected $fillable = [
        'id_surat',
        'created_at',
        'updated_at'
    ];
}
