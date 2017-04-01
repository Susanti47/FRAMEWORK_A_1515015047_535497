<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dosen extends Model
{
    protected $table = 'dosen';
    protected $fillable =['nama','nip','alamat','pengguna_id'];

    public function pengguna(){
    	return $this->belongsto(pengguna::class);

    }
    public function dosen_matakuliah(){
    	return $this->hasone(dosen_matakuliah::class);
    }
}
