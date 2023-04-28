<div>

            <div class="px-6 py-4 flex rounded-lg bg-blue-900 m-4">
                <input  wire:model="search"  class="  text-center flex-1 shadow-sm border-indigo-500 rounded-lg"   placeholder="Ingrese el nombre o correo de un usuario">
                
            </div>

            <div class="container m-4">
                <form class="container" wire:submit.prevent="store" >

                
                    <div>
                    <label class="w-32 text-blue-700">Matricular Usuario:</label>
                    <select wire:model="user_id" name="user_id" class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" >
                        <option value="" selected disabled>Seleccione un usuario</option>
                        
                        @foreach ($users as $user)
                            <option value="{{$user->id}}">{{$user->name}} - {{$user->email}}</option>
                        @endforeach
                    </select> 
                    <br>
                    <button class="btn btn-primary ml-2" type="submit">Agregar</button>
                    </div>

                </form>

            </div>

            <div class="container m-4">

                <form class="container" wire:submit.prevent="destroy" >

                
                    <div>
                    <label class="w-32 text-blue-700">Eliminar Alumno:</label>
                    <select wire:model="student" name="student" class="mt-1 block w-full py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm" >
                        <option value="" selected disabled>Seleccione un usuario</option>
                        
                        @foreach ($students as $student)  
                            <option value="{{$student->id}}">{{$student->name}} - {{$student->email}}</option>
                        @endforeach
                    </select> 
                    <br>
                    <button class="btn btn-danger ml-2" type="submit">Eliminar</button>
                    </div>

                </form>

            </div>

</div>
