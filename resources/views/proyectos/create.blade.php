@extends('adminlte::page')
@section('title', 'ITSW-Academy')

@section('content_header')
    <h1>Crear proyecto</h1>
@stop

@section('content')
<div class="w-full mx-auto  md:w-11/12 xl:w-9/12 text-center">
    <div class="container px-6 py-10 mx-auto bg-gray-200">
       
            {!! Form::open(['route'=>'proyecto.store']) !!}
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
                
                        {!! Form::submit('Crear', ['class'=>'btn btn-primary w-full']) !!}
                     
                
            </div>
            {!! Form::close() !!}

     
    </div>
</div>
@stop
