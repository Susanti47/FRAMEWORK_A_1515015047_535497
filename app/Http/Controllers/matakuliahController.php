<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\matakuliah;

class matakuliahController extends Controller
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
	$matakuliah = new matakuliah();
	$matakuliah->title = 'framework';
	$matakuliah->keterangan = 'waktu sudah hampir habis';
	$matakuliah->save ();
	return "data dengan title : {$matakuliah->title} telah disimpan";
	}
}