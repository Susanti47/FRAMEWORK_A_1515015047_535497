<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\mahasiswa;
class mahasiswaController extends Controller
{
    public function awal()
{
    	return "Halo";
    }
    public function tambah()
    {
    	return $this->simpan();
    }
    public function simpan(){
	$mahasiswa = new Mahasiswa();
	$mahasiswa->nama = 'Susanti';
	$mahasiswa->nim = '1515015047';
	$mahasiswa->alamat = 'Juanda 7';
	$mahasiswa->pengguna_id = '1';
	$mahasiswa->save ();
	return "data dengan nama {$mahasiswa->nama} telah disimpan";
	}
}

