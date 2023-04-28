@extends('adminlte::page')

@section('title', 'ITSW-Academy')

@section('content_header')
    <h1>Editar role</h1>
@stop

@section('content')

@if (session('info'))
<div class="alert alert-primary" role="alert">
    <strong>!Éxito!</strong> {{session('info')}}
</div>
@endif




    <div class="card">
        <div class="card-body">

            {!! Form::model($role, ['route'=> ['admin.roles.update',$role], 'method' => 'put']) !!}

            @include('admin.roles.partials.form')

            {!! Form::submit('Actualizar Rol', ['class' => 'btn btn-primary']) !!}
        
            {!! Form::close() !!}
        </div>
    </div>
@stop