<div class="form-group">
    {!! Form::label('name', 'Nombre') !!}
    {!! Form::text('name', null, ['class'=>'form-control' . ($errors->has('name') ?' is-invalid': ''), 'placeholder' => 'Ingrese el nombre del rol']) !!}
        @error('name')
        <small class="text-danger">
            {{$message}}
        </small>
        @enderror
    </div>
    <h2 class="h3">Lista de permisos </h2>
    @error('permissions')
    <small class="text-danger">
        {{$message}}
    </small>
    @enderror
    <br>

    @foreach ($permissions as $permission)
    <div>
        <label>
            {!! Form::checkbox('permissions[]', $permission->id, null, ['class'=> 'mr-1']) !!}
            {{$permission->description}}
        </label>
    </div>
    
    @endforeach
 