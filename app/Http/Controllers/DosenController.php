<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Dosen;

class DosenController extends Controller
{
    public function awal() 
    {
    	return view('Dosen.awal',['data'=>Dosen::all()]);

    public function tambah()
    {
    	return view('Dosen.tambah');

    }
    public function simpan(Requests $input) 
{
	$Dosen =new Dosen();
	$Dosen->nama=$input->nama;
	$Dosen->nim=$input->nim;
	$Dosen->alamat=$input->alamat;
	$Dosen->pengguna_id = $input->pengguna_id;
	$informasi = $Dosen->save() ? 'berhasil simpan data' : 'gagal simpan data';
	return redirect('Dosen')->with(['informasi'=>$informasi]);
	}
	public function edit($id)
	{
		$Dosen = Dosen::find($id);
		return view('Dosen.edit')->with(array('Dosen'=>$Dosen));
	}
	public function lihat($id)
	{
		$Dosen = Dosen::find($id);
		return view('Dosen.lihat')->with(array('Dosen'=>$Dosen));
	}
	public function update($id, Request $input)
	{
		$Dosen = new Dosen();
		$Dosen->nama = $input->nama;
		$Dosen->nim = $input->nim;
		$Dosen->alamat = $input->alamat;
		$Dosen->pengguna_id = $input->pengguna_id;
		$informasi = $Dosen-> save() ? 'berhasil update data' : 'gagal update data';
		return redirect('Dosen')->with(['informasi'=>$informasi]);
	}
	public function hapus($id)
	{
		$Dosen = Dosen::find($id);
		$Dosen = $Dosen->delete() ? 'berhasil hapus data' : 'gagal hapus data';
		return redirect('Dosen')->with(['informasi'=>$informasi]);
	}
}

