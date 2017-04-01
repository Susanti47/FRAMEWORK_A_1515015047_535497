<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class pengguna extends Model
{
	protected $table ='pengguna';
	protected $fillabel =['username', 'password'];
    		public function mahasiswa()
    		{
    			return $this->hasOne(mahasiswa::class);
    		}
    		public function dosen()
    		{
    			return $this->hasOne(Dosen::class);
    		}
    		public function peran()
    		{
    			return $this->belongToMany(peran::class);
    		}
}
