<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Dosen_Matakuliah;
use App\Dosen;
use App\Matakuliah;
use App\Http\Requests\Dosen_MatakuliahRequest;


class Dosen_MatakuliahController extends Controller
{
  protected $informasi = 'Gagal Melakukan Aksi';
  public function awal()
  {
    $semuaDosenMatakuliah = Dosen_Matakuliah::all();
    return view('dosen_matakuliah.awal',compact('semuaDosenMatakuliah'));
  }
  public function tambah()
  {
    $matakuliah = new Matakuliah;
    $dosen = new Dosen;
    return view('dosen_matakuliah.tambah',compact('matakuliah','dosen'));
  }
  public function simpan(Dosen_MatakuliahRequest $input)
  {
    $dosen_matakuliah = new Dosen_Matakuliah($input->only('dosen_id','matakuliah_id')); 
    if($dosen_matakuliah->save()) $this->informasi= 'Matakuliah dan Dosen Berhasil Di Simpan';
    return redirect('dosen_matakuliah')->with(['informasi'=>$this->informasi]);
  }
  public function edit ($id)
  {
    $dosen_matakuliah= Dosen_Matakuliah::find($id);
    $dosen = new Dosen;
    $matakuliah= new Matakuliah;
    return view('dosen_matakuliah.edit',compact('dosen','matakuliah','dosen_matakuliah'));
  }
  public function lihat ($id)
  {
  $dosen_matakuliah= Dosen_Matakuliah::find($id);
  return view ('dosen_matakuliah.lihat',compact('dosen_matakuliah'));
  }
  public function update ($id,Dosen_Matakuliahrequest $input)
  {
    $dosen_matakuliah = Dosen_Matakuliah::find($id);
    $dosen_matakuliah->fill($input->only('dosen_id','matakuliah_id'));
    if($dosen_matakuliah->save()) $this->informasi = "Matakuliah dan Dosen Berhasil di Perbaharui";
    return redirect('dosen_matakuliah')->with(['informasi'=>$this->informasi]);
  }
  public function hapus ($id)
  {
  $dosen_matakuliah= Dosen_Matakuliah::find($id);
  $informasi = $dosen_matakuliah->delete() ? 'Berhasil Hapus Data' : 'Gagal hapus Data';
  return redirect('dosen_matakuliah')->with(['informasi'=>$informasi]);
  }   
}