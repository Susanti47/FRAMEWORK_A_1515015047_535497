<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Dosen;

class RelationShipRebornController extends Controller
{
	public function ujiHas()
	{
		return Dosen::has('Dosen_matakuliah')->get();
	}
	public function ujiDoesntHave()
	{
		return Dosen::doesntHave('Dosen_matakuliah')->get();
	}
}