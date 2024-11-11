<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Folder extends Model
{
    use HasFactory;

    protected $table = 'folder';
    protected $primaryKey = 'id_folder';
    protected $fillable = [
        'nama_folder',
        'created_at',
        'updated_at',
    ];
}
