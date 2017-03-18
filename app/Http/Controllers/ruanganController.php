<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\ruangan;
class ruanganController extends Controller
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
	$ruangan = new ruangan();
	$ruangan->title = '405';
	return "data dengan ruangan : {$ruangan->title} telah disimpan";
	}
}
