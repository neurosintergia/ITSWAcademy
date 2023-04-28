<x-app-layout>
    @if (session('info'))
    <div class="alert alert-success text-green-700 text-center"> 
       <strong >{{session('info')}}</strong> 
         </div>
@endif


    <section  class="object-cover bg-cover  " style="background-image: url({{asset('img/bh2.png')}})">
        <div class="max-w-7xl mx-auto  px-4  lg:px-8 py-36">
        <div class="w-full md:w-3/4 lg:w-1/2    rounded-xl  bg-white  border-gray-400 border-4 p-3">
        <h1 class=" text-center  py-4 text-4xl font-extrabold leading-none tracking-normal text-gray-900 md:text-6xl md:tracking-tight">
            <span>Trabajemos </span> <span class="block w-full py-2 text-transparent bg-clip-text leading-12 bg-gradient-to-r from-green-400 to-purple-500 lg:inline">en equipo</span> un nuevo inicio
               </h1>
        <p class="p-6 text-lg text-center text-gray-600 ">
            Creciendo juntos en esta transformación digital
        </p>
    <div class="text-center">
        <a href="https://wa.me/529612206477/?text=Hola%2C%20puede%20apoyarme%20en" class=" items-center cursor-pointer hover:bg-green-600 inline-flex  justify-center w-full px-6 py-3 mb-2 text-lg text-white bg-green-900 rounded-2xl sm:w-auto sm:mb-0">
Enviar WhatsApp            <svg class="w-4 h-4 ml-1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </a>
    </div>

    </div>
 
        </div>
    </section>




    <div class="container px-6 py-10 mx-auto md:py-16">
        <div class="flex flex-col space-y-6 md:flex-row md:items-center md:space-x-6">
            <div class="w-full md:w-1/2">
                <div class="max-w-lg">
                    <h1 class="text-2xl text-center font-medium tracking-wide text-gray-800 md:text-4xl">
                        El talento y  la transformación digital
                    </h1>
                    <p class="mt-2 text-center  text-gray-600">
                        Indispensable para crecer y ser competitivos
                    </p>
                    <div class="grid gap-6 mt-8 sm:grid-cols-2">
                        <div class="flex items-center space-x-6 text-gray-800">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" class="w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Talento</span>
                        </div>
                        <div class="flex items-center space-x-6 text-gray-800">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" class="w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Conciencia</span>
                        </div>
                        <div class="flex items-center space-x-6 text-gray-800">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" class="w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Motivación</span>
                        </div>
                        <div class="flex items-center space-x-6 text-gray-800">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" class="w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Competencias</span>
                        </div>
                        <div class="flex items-center space-x-6 text-gray-800">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" class="w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Capacidad</span>
                        </div>
                        <div class="flex items-center space-x-6 text-gray-800">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" class="w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Disposición</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="flex items-center justify-center w-full md:w-1/2">
                <img src="{{asset('img/bc1.jpg')}}"
                    alt="itsw" class="w-full h-full max-w-2xl rounded" />
            </div>
        </div>
    </div>
   









    <div class="px-12 mx-auto max-w-7xl">
        <div class="w-full mx-auto  md:w-11/12 xl:w-9/12 text-center">
           
   
            <div class="container px-6 py-10 mx-auto bg-gray-200">
                <h3 class="text-gray-800">Coméntanos sobre tu proyecto</h3>
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
                        
                                {!! Form::submit('Enviar', ['class'=>'btn btn-primary w-full']) !!}
                             
                        
                    </div>
                    {!! Form::close() !!}

             
            </div>
        </div>



<!-- component -->


<!-- component -->
    <div class="block">

        <div x-data="{ open : false }">
            <div class="bg-white shadow">
                <div class="container mx-auto px-4 py-4">
                    <div class="flex justify-between">
                        
                        <div class="">
                            <button type="button" @click="open = !open" class="flex items-center text-gray-700 px-3 py-1 border font-medium rounded"> 
                                <svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" class="w-5 h-5 mr-1">
                                    <g class="">
                                        <path d="M0 0h24v24H0z" fill="none" class=""></path>
                                        <path d="M3 17v2h6v-2H3zM3 5v2h10V5H3zm10 16v-2h8v-2h-8v-2h-2v6h2zM7 9v2H3v2h4v2h2V9H7zm14 4v-2H11v2h10zm-6-4h2V7h4V5h-4V3h-2v6z" class=""></path>
                                    </g>
                                </svg>
                            Contacto
                            </button>

                
                        </div>
                    </div>
                </div>
            </div>
            <div class="container mx-auto">
                <div class="flex flex-col mx-4 px-8 py-6 bg-white rounded-b-md shadow"
                    x-show="open" x-on:click.away="open=false"
                    x-transition:enter="transition ease-out origin-top duration-300"
                    x-transition:enter-start="opacity-0 transform scale-90"
                    x-transition:enter-end="opacity-100 transform scale-100"
                    x-transition:leave="transition ease-in origin-top duration-300"
                    x-transition:leave-start="opacity-100 transform scale-100"
                    x-transition:leave-end="opacity-0 transform scale-90"
                    >
                
                  <div class="items-center justify-center">
                    <a class="block px-8 py-2 mt-6 text-lg font-medium text-center text-white transition-colors duration-300 transform bg-green-600 rounded md:mt-0 hover:bg-green-400"
                    href="https://wa.me/529612206477/?text=Hola%2C%20puede%20apoyarme%20en">WhatsApp</a>
                    <br>
                    <a class="block px-8 py-2 mt-6 text-lg font-medium text-center text-white transition-colors duration-300 transform bg-blue-700 rounded md:mt-0 hover:bg-blue-500"
                    href="tel:9612206477">Llamar</a>
                  </div>
                  </div>
            </div>
      

<!-- -->

    <div class="container px-6 py-10 mx-auto md:py-16">
        <div class="flex flex-col space-y-6 md:flex-row md:items-center md:space-x-6">
            <div class="flex items-center justify-center w-full md:w-1/2">
                <img src="https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&amp;ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=1050&amp;q=80"
                    alt="car photo" class="w-full h-full max-w-2xl rounded" />
            </div>
            <div class="w-full md:w-1/2">
                <div class="max-w-md mx-auto">
                    <h1 class="text-2xl text-center font-medium tracking-wide text-gray-800 md:text-4xl">
                        Toda empresa necesita diferentes tipos de talentos 
                    </h1>
                    <p class="mt-5 leading-7 text-gray-600 text-justify">
                         <br />
                        Como  ejemplo, una compañía tecnológica no podrá prescindir de sus profesionales técnicos, pero también le hará falta personal con capacidad de liderazgo, para relaciones públicas, comunicación y administración para lograr los objetivos establecidos. 
                        <br /> Por otra parte un negocio pequeño o familiar de igual forma requiere de tipos de talentos distintos para poder llevar a cabo las actividades o procesos que se requieren para poder sacar a flote 
                        
                    </p>
                    <div class="grid gap-6 mt-8 sm:grid-cols-2">
                        <div class="flex items-center space-x-6 text-gray-800">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" class="w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Personas motivadas</span>
                        </div>
                        <div class="flex items-center space-x-6 text-gray-800">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" class="w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Resultados</span>
                        </div>
                        <div class="flex items-center space-x-6 text-gray-800">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" class="w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Permanente actualización</span>
                        </div>
                        <div class="flex items-center space-x-6 text-gray-800">
                            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" class="w-5 h-5">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M5 13l4 4L19 7"></path>
                            </svg>
                            <span>Pasión por lo que hacen</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <!--Contacto  -->


   <form id="contact-me" action="{{route('contacto.store')}}" method="POST" class="w-full mx-auto max-w-3xl bg-white shadow p-8 text-gray-700 ">
  
    @csrf
        <h2 class="w-full my-2 text-3xl text-center font-bold leading-tight ">Escribenós</h2>
        <!-- name field -->
        <div class="flex flex-wrap mb-6">
            <div class="relative w-full appearance-none label-floating">
                <input class="tracking-wide py-2 px-4 mb-3 leading-relaxed appearance-none block w-full bg-gray-200 border border-gray-200 rounded focus:outline-none focus:bg-white focus:border-gray-500"
                id="name" name="name" type="text" placeholder="Nombre"required>
                <label for="name" class="absolute tracking-wide py-2 px-4 mb-4 opacity-0 leading-tight block top-0 left-0 cursor-text">
                  Nombre
                </label>
            </div>
        </div>
  
         <!-- telefono field -->
         <div class="flex flex-wrap mb-6">
          <div class="relative w-full appearance-none label-floating">
              <input class="tracking-wide py-2 px-4 mb-3 leading-relaxed appearance-none block w-full bg-gray-200 border border-gray-200 rounded focus:outline-none focus:bg-white focus:border-gray-500"
              id="name" name="telefono" type="text" placeholder="Telefono"required>
              <label for="name" class="absolute tracking-wide py-2 px-4 mb-4 opacity-0 leading-tight block top-0 left-0 cursor-text">
                  Telefono
              </label>
          </div>
      </div>
            <!-- email field -->
            <div class="flex flex-wrap mb-6">
              <div class="relative w-full appearance-none label-floating">
                  <input class="tracking-wide py-2 px-4 mb-3 leading-relaxed appearance-none block w-full bg-gray-200 border border-gray-200 rounded focus:outline-none focus:bg-white focus:border-gray-500"
                  id="name" name="correo" type="text" placeholder="Correo"required>
                  <label for="name" class="absolute tracking-wide py-2 px-4 mb-4 opacity-0 leading-tight block top-0 left-0 cursor-text">
                      Correo
                  </label>
              </div>
          </div>
        <!-- Message field -->
        <div class="flex flex-wrap mb-6">
            <div class="relative w-full appearance-none label-floating">
                <textarea class="autoexpand tracking-wide py-2 px-4 mb-3 leading-relaxed appearance-none block w-full bg-gray-200 border border-gray-200 rounded focus:outline-none focus:bg-white focus:border-gray-500"
                    id="message" name="mensaje" type="text" placeholder="Mensaje"></textarea>
                    <label for="message" class="absolute tracking-wide py-2 px-4 mb-4 opacity-0 leading-tight block top-0 left-0 cursor-text">Mensaje
                </label>
            </div>
        </div>
    
        <div class="">
            <button             class="w-full shadow bg-teal-400 bg-blue-800 hover:bg-teal-400 focus:shadow-outline focus:outline-none text-white hover:bg-blue-500 font-bold py-2 px-4 rounded"
                type="submit">
                Enviar
            </button>
    
        </div>
    </form>
    
 
    







</x-app-layout>
