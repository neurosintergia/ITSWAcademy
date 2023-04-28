@extends('adminlte::page')

@section('title', 'ITSW-Academy')

@section('content_header')
    <h1>Cursos Matriculados</h1>
@stop

@section('content')
    @if (session('info'))
    <div class="alert alert-success">
        <strong>{{session('info')}}</strong>
    </div>
        
    @endif
   <div class="card">
       <div class="card-body">
           <p class="h5">Nombre</p>
           <p class="form-control">{{$user->name}}</p>

           <h2 class="h5">Listado de cursos</h2>

           <div class="container px-6 mt-12">

           
            @if ($courses->count())
                
              <ul>
                    @foreach ($courses as $course)
                        
                    
                         <li>
                  
                                <h2 class="card-title">{{Str::limit($course->title, 45)}} - Prof: {{($course->teacher->name)}}</h2>
    
                         
                            </li>  
    
                    @endforeach
    
                </ul>
    
                @if ($courses->hasPages())
                
                    <div class="mt-8">
                        {{ $courses->links() }}
                    </div>
                    
                @endif
                
    
            @else
                
                <div class="card">
                    <div class="card-body">
                    
                        
                        <p class="my-2 text-center">No está matriculado en ningún curso</p>
    
                        
                    </div>
                </div>
            @endif
    
        </div>

           {{-- @foreach ($roles as $role)
               <div>
                   <label>
                       {!! Form::checkbox('roles[]', $role->id,null, ['class'=>'mr-1']) !!}
                       {{$role->name}}
                   </label>
               </div>
           @endforeach --}}
          
       </div>
   </div>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script> console.log('Hi!'); </script>
@stop