@extends('adminlte::page')

@section('title', 'ITSW-Academy')

@section('content_header')
<a class="btn btn-primary float-right" href="{{route('admin.posts.create')}}">Nuevo post</a>
    <h1>Listado de Post</h1>
@stop

@section('content')

@if (session('info'))
    <div class="alert alert-success">
        <strong>{{session('info')}}</strong>
    </div>    
@endif
 @livewire('admin.posts-index')
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script> console.log('Hi!'); </script>
@stop