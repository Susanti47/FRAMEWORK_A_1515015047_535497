<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class jadwal_matakuliah extends Model
{
   protected $table = 'jadwal_matakuliah';
    protected $fillable =['mahasiswa_id','ruangan_id','dosen_matakuliah'];

    		public function Dosen_matakuliah()
    		{
    			return $this->belongsTo(dosen_matakuliah::class);
    		}
    		public function Ruangan()
    		{
    			return $this->belongsTo(ruangan::class);
    		}
    		public function Mahasiswa()
    		{
    			return $this->belongsTo(mahasiswa::class);
    		}
}
