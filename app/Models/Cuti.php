<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cuti extends Model
{
    use HasFactory;

    protected $table = 'cuti';
    protected $primaryKey = 'id_cuti';
    protected $fillable = [
        'tanggal_cuti',
        'jumlah_hari',
        'alasan_cuti',
        'status',
        'id_user',
        'created_at',
        'updated_at'
    ];
}
