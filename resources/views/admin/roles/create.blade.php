@extends('adminlte::page')

@section('title', 'ITSW-Academy')

@section('content_header')
    <h1>Crear nuevo rol</h1>
@stop

@section('content')


<div class="card">
    <div class="card-body">
       
        {!! Form::open(['route'=>'admin.roles.store']) !!}

        @include('admin.roles.partials.form')
        
        {!! Form::submit('Creal Rol', ['class' => 'btn btn-primary mt-2']) !!}

    {!! Form::close() !!}

    </div>
</div>

@stop