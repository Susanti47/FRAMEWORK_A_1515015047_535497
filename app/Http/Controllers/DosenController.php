<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Dosen;

class DosenController extends Controller
{
    public function awal() 
    {
    	return "Halo";
}
    public function tambah()
    {
    	return $this->simpan();
    }
public function simpan() 
{
	$dosen = new Dosen();
	$dosen->nama = 'Susanti';
	$dosen->nip = '6407035605970002';
	$dosen->alamat = 'Juanda 7';
	$dosen->pengguna_id = '1';
	$dosen->save ();
	return "data dengan nama : {$dosen->nama} telah disimpan";
	}
}

