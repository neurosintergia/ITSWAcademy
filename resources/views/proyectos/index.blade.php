@extends('adminlte::page')
@section('title', 'ITSW-Academy')

@section('content_header')
    <h1>Proyectos</h1>
@stop

@section('content')

@if (session('info'))
    <div class="alert alert-success"> 
       <strong>{{session('info')}}</strong> 
         </div>
@endif


<div class="card">
    <div class="card-header">
        <a class="btn btn-primary" href="{{route('proyecto.create')}}">Crear Proyecto</a>
    </div>

    <div class="card-body">
        <table class="table table-striped">
            <thead>
                <th>ID</th>
                <th>Nombre</th>
                <th>Folio</th>
                <th>Contacto</th>
                <th>Mensaje</th>
                <th colspan="2"></th>

            </thead>
            <tbody>

                @foreach ($proyectos as $proyecto)
                <tr>
                <td>{{$proyecto->id}}</td>
                <td>{{$proyecto->name}}</td>
                <td>{{$proyecto->folio}}</td>
                <td>{{$proyecto->contacto}}</td>
                <td>{{$proyecto->mensaje}}</td>
                <td width="10px">
                    <a class="btn btn-primary" href="{{route('proyecto.edit', $proyecto)}}">Revisar</a>
                </td>
                <td width="10px">
                    <form action="{{route('proyecto.destroy', $proyecto)}}", method="POST">
                        @csrf
                        @method('delete')
                        <button type="submit" class="btn btn-danger  ">Eliminar</button>
                     </form>
                </td>
            </tr>
                @endforeach

            </tbody>
        </table>
    </div>
</div>

@stop
