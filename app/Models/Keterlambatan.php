<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Keterlambatan extends Model
{
    use HasFactory;

    protected $table = 'Keterlambatan';
    protected $primaryKey = 'id_telat';
    protected $fillable = [
        'tanggal_telat',
        'jam_masuk',
        'total_telat',
        'alasan_telat',
        'status',
        'id_user',
        'created_at',
        'updated_at'
    ];
}
