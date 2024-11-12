<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    use HasFactory;

    protected $table = 'file';
    protected $primaryKey = 'id_file';
    protected $fillable = [
        'nama_file',
        'id_folder',
        'created_at',
        'updated_at',
        'file_path',
    ];
}
