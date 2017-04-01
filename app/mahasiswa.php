<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class mahasiswa extends Model
{
    protected $table = 'mahasiswa';
    protected $fillable =['nama','nim','alamat','pengguna_id'];

     public function Pengguna(){
    	return $this->belongsTo(pengguna::class);

    }
    public function dosen_matakuliah(){
    	return $this->hasMany(dosen_matakuliah::class);
    }
}
