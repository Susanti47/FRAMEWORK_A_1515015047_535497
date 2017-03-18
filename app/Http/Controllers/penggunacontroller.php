<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Pengguna;

class penggunacontroller extends Controller
{
	public function awal(){
		return "Hello dari penggunacontroller";
	}
	public function tambah()
	{
		return $this->simpan();
	}
	public function simpan()
	{
		$pengguna = new pengguna();
		$pengguna -> username = 'jon doe';
		$pengguna -> password = 'doe jon';
		$pengguna -> save();
		return "data dengan username {$pengguna->username} telah disimpan";
	}
    //
}
