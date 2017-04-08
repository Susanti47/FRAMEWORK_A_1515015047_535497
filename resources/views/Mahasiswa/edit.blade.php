@extends('master')
@section('container')
<div class="panel panel-info">
	<div class="panel-heading">
	<strong><a href="{{url('mahasiswa')}}"><i class="fa text-default fa-chevron-left"></i></a> Perbarui Data Pengguna </strong>
		</div>
		{!!
	Form::model($mahasiswa,['url'=>'mahasiswa/edit/'.$mahasiswa->id,'class'=>'form-horizontal'])!!}
			@include('mahasiswa.form')
			<div style="width: 100%; text-align: right;">
				<button class="btn btn-info"><i class="fa fa-save"></i> Perbaruhi </button>
				<button type="rest" class="btn btn-danger"><i class="fa fa-undo"></i> Ulangi </button>
			</div>
		{!! Form::close() !!}	
	</div>
@stop


