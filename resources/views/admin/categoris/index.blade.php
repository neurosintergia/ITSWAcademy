@extends('adminlte::page')

@section('title', 'ITSW-Academy')

@section('content_header')
@can('admin.categoris.create')
<a class="btn btn-secondary btn-sm float-right" href="{{route('admin.categoris.create')}}">Agregar Categoría</a>
@endcan
    <h1>Lista de Categorias</h1>
@stop

@section('content')

@if (session('info'))
    <div class="alert alert-success">
        <strong>{{session('info')}}</strong>
    </div>    
@endif

   <div class="card">
       <div class="card-body">
           <table class="table table-striped">
               <thead>
                   <th>ID</th>
                   <th>Name</th>
                   <th colspan="2"></th>

               </thead>
               <tbody>
                    @foreach ($categoris as $categori)
                        <tr>
                            <td>{{$categori->id}}</td>
                            <td>{{$categori->name}}</td>
                            <td width="10px">
                             @can('admin.categoris.edit')
                             <a class="btn btn-primary" href="{{route('admin.categoris.edit', $categori)}}" href="">Editar</a>
                             @endcan
                            </td>
                            <td width="10px">
                                @can('admin.categoris.destroy')
                                <form action="{{route('admin.categoris.destroy', $categori)}}" method="POST">
                                @csrf
                                    @method('delete')
                                <button type="submit" class="btn btn-danger">Eliminar</button>
                                </form>
                                @endcan
                            </td>
                        </tr>
                    @endforeach
               </tbody>
           </table>
       </div>
   </div>
@stop