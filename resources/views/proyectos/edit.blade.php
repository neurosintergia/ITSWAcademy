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
        <div class="card-body">
            {!! Form::model($proyecto,['route'=>['proyecto.update',$proyecto], 'method'=> 'put']) !!}
            <div class="grid mt-6  grid-cols-1 md:grid-cols-2 lg:grid-cols-3 ">
                    <div class="form-group p-2">
                        {!! Form::text('name', null, ['class' => 'form-control w-full', 'placeholder' => 'Proyecto']) !!}  
                        @error('name')
                            <span class="text-red-700">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group p-2">
                        {!! Form::text('folio', null, ['class' => 'form-control w-full', 'placeholder' => 'Nombre']) !!}
                        @error('folio')
                            <span class="text-red-700">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group p-2">
                        {!! Form::text('contacto', null, ['class' => 'form-control w-full', 'placeholder' => 'Contacto']) !!}
                        @error('contacto')
                        <span class=" text-red-700">{{$message}}</span>
                    @enderror
                    </div>
                    <div class="form-group p-2 lg:col-span-3">
                        {!! Form::textarea('mensaje', null, ['class' => 'form-control w-full', 'placeholder' => 'Escribe tu mensaje']) !!}
                        @error('mensaje')
                        <span class=" text-red-700">{{$message}}</span>
                    @enderror
                    </div>
                      {!! Form::submit('Actualizar', ['class'=>'btn btn-primary w-full']) !!}
                
            </div>
            {!! Form::close() !!}
        </div>
    </div>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')
    <script> console.log('Hi!'); </script>
@stop