@extends('adminlte::page')

@section('title', 'ITSW-Academy')

@section('content_header')
    <h1>Usuarios Matriculados</h1>
@stop

@section('content')
@livewire('admin.user-matriculas')
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script> console.log('Hi!'); </script>
@stop