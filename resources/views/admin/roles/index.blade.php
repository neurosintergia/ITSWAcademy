@extends('adminlte::page')

@section('title', 'ITSW-Academy')

@section('content_header')

<a class="btn btn-secondary float-right" href="{{route('admin.roles.create')}}">Nuevo rol</a>
    <h1>Lista de roles</h1>
@stop

@section('content')

@if (session('info'))
<div class="alert alert-primary" role="alert">
    <strong>!Éxito!</strong> {{session('info')}}
</div>
@endif


   <div class="card">
       <div class="card-body">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Role</th>
                    <th colspan="2"></th>
                </tr>

            </thead>
            
            <tbody>

                @forelse ($roles as $role)
                    <tr>
                        <td>{{$role->id}}</td>
                        <td>{{$role->name}}</td>
                        <td width="10px">
                            <a class="btn btn-sm btn-primary" href="{{route('admin.roles.edit', $role)}}">Editar</a>
                        </td>
                        <td width="10px">
                            <form action="{{route('admin.roles.destroy', $role)}}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-sm btn-danger">Eliminar</button>
                            </form>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td colspan="4">No hay ningun rol registrado</td>
                    </tr>
                    @endforelse
            </tbody>
        </table>
    </div>
    </div>
@stop