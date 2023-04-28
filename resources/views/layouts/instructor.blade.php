<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ mix('css/app.css') }}">
        <link rel="stylesheet" href="{{ asset('vendor/fontawesome-free/css/all.min.css') }}">
       
       
        @livewireStyles

        <!-- Scripts -->
        <script src="{{ mix('js/app.js') }}" defer></script>
    </head>
    <body class="font-sans antialiased">
        <x-jet-banner />

        <div class="min-h-screen bg-gray-100">
            @livewire('navigation')

            
            <!-- Page Content -->
            <div class="container py-8 grid grid-cols-5 gap-6">
                <aside>
                    <h1 class="font-bold text-lg mb-4">Edición del curso</h1>
                    <ul class="text-sm text-gray-600 mb-4">
                        <li class="leading-7 mb-1 border-l-4 @routeIs('instructor.courses.edit',$course) border-indigo-400 @else border-transparent  @endif pl-2">
                            <a href="{{route('instructor.courses.edit', $course)}}">Información del curso</a>
                        </li>
                        <li class="leading-7 mb-1 border-l-4 @routeIs('instructor.courses.goals', $course) border-indigo-400 @else border-transparent  @endif pl-2">
                            <a href="{{route('instructor.courses.goals', $course)}}">Metas del curso</a>
                        </li>
        
        
                        <li class="leading-7 mb-1 border-l-4 @routeIs('instructor.courses.curriculum', $course) border-indigo-400 @else border-transparent  @endif pl-2">
                            <a href="{{route('instructor.courses.curriculum', $course)}}">Lecciónes del curso</a>
                        </li>
        
                     
                       

                        <li class="leading-7 mb-1 border-l-4 @routeIs('instructor.courses.students', $course) border-indigo-400 @else border-transparent  @endif pl-2">
                            <a href="{{route('instructor.courses.students', $course)}}">Estudiantes</a>
                        </li>
        
                       
                        @if ($course->observation)
                        <li class="leading-7 mb-1 border-l-4 @routeIs('instructor.courses.observation', $course) border-indigo-400 @else border-transparent  @endif pl-2">
                            <a href="{{route('instructor.courses.observation', $course)}}">Observaciónes</a>
                        </li>
                        @endif

                     </ul>

                     @switch($course->status)
                            @case(1)
                                <form action="{{route('instructor.courses.status', $course)}}" method="POST">
                                    @csrf
                                    <button class="btn btn-danger" type="submit">Solicitar revisión</button>
                                </form>
                                @break
                            @case(2)
                            <div class="card text-gray-500">
                                <div class="card-body">
                                    Este curso se encuentra en revisión
                                </div>
                            </div>
                               
                                @break
                             @case(3)
                             <div class="card text-gray-500">
                                <div class="card-body">
                                    Este curso se encuentra en publicado
                                </div>
                            </div>
                         
                             @break
                         @default
                             
                     @endswitch

                   
                </aside>
                    <main class="col-span-4 card">
                     {{$slot}}
        
                  </main>
        
            </div>
        </div>

        @stack('modals')

        @livewireScripts

      @isset($js)
      {{$js}}
      @endisset
    
    </body>
    <footer style="background: #0C166A" class=" text-white p-4 sm:p-6 dark:bg-gray-800">
        <div class="mx-auto max-w-screen-xl  text-white">
            <div class="md:flex md:justify-between  ">
                <div class="mb-6 md:mb-0">
                    <a href="{{route('home')}}" class="flex items-center">
    
                        <img class="block lg:hidden h-12 w-auto" src="{{ asset('img/home/logo2.png') }}" alt="ITSW">
                        <img class="hidden lg:block h-12 w-auto" src="{{ asset('img/home/logo2.png') }}" alt="ITSW">
    
                        <span class="self-center text-2xl font-semibold whitespace-nowrap dark:text-white"> ITSW-Academy</span>
                    </a>
                </div>
                <div class="grid grid-cols-2 gap-8 sm:gap-6 sm:grid-cols-3">
                    <div>
                        <h2 class="mb-6 text-sm font-semibold  uppercase dark:text-white"></h2>
                        <ul>
                            <li class="mb-4">
                                <a href="{{route('acerca.index')}}" class="hover:underline">Acerca</a>
                            </li>
                            <li>
                                <a href="{{route('courses.index')}}" class="hover:underline">Cursos</a>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <h2 class="mb-6 text-sm font-semibold uppercase dark:text-white"></h2>
                        <ul>
                            <li class="mb-4">
                                
                                <a href="{{route('servicios.index')}}"
                                    class="hover:underline ">Servicios</a>
                            </li>
                            <li>
                                <a href="{{route('contacto.index')}}"
                                class="hover:underline ">Contacto</a>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <h2 class="mb-6 text-sm font-semibold  uppercase dark:text-white"></h2>
                        <ul>
                            <li class="mb-4">
                                <a href="{{route('politica')}}"
                                    class="hover:underline ">Politica y Privacidad</a>
                            </li>
                            <li>
                                <a href="{{route('terminos')}}"
                                    class="hover:underline">Terminos y Condiciones</a>
                          
                            </li>
                         
                          
                        </ul>
                    </div>
                </div>
            </div>
            <hr class="my-6 border-gray-200 sm:mx-auto dark:border-gray-700 lg:my-8" />
            <div class="sm:flex sm:items-center sm:justify-between">
                <span class="text-sm  sm:text-center dark:text-gray-400">© 2023 <a href="https://intelisoftw.com/"
                        class="hover:underline">ITSW-Academy</a>. <a href="https://intelisoftw.com/"
                        class="hover:underline">Desarrollado por Intelisoftw.</a>
                </span>
                <div class="flex mt-4 space-x-6 sm:justify-center sm:mt-0">
                    <a href="https://wa.me/529612206477/?text=Hola%2C%20puede%20apoyarme%20en"
                    class="text-white hover:text-red-500 dark:hover:text-red">
                    <button
                        class="bg-green-600 text-white w-8 h-8 rounded-full outline-none focus:outline-none mr-1 mb-1"
                        type="button">
                        <i class="fab fa-whatsapp"></i>
                    </button>
                </a>
                <a href="https://www.facebook.com/intelisoftw"
                        class="text-white hover:text-red-500 dark:hover:text-red">
                        <button
                            class="bg-blue-800 text-white w-8 h-8 rounded-full outline-none focus:outline-none mr-1 mb-1"
                            type="button">
                            <i class="fab fa-facebook"></i>
                        </button>
                    </a>
                 
                    <a href="https://www.instagram.com/intelisoftw/"
                        class="text-white hover:text-red-500 dark:hover:text-red">
                        <button class="bg-red-800 text-white w-8 h-8 rounded-full outline-none focus:outline-none mr-1 mb-1"
                            type="button">
                            <i class="fab fa-instagram"></i>
                        </button>
                    </a>
    
                    <a href="https://twitter.com/intelisoftw" class="text-white hover:text-red-500 dark:hover:text-red">
    
                        <button
                            class="bg-blue-400 text-white w-8 h-8 rounded-full outline-none focus:outline-none mr-1 mb-1"
                            type="button">
                            <i class="fab fa-twitter"></i>
                        </button>
    
                    </a>
                    <a href="https://www.youtube.com/@intelisoftw"
                        class="text-white hover:text-red-500 dark:hover:text-red">
                        <button class="bg-red-600 text-white w-8 h-8 rounded-full outline-none focus:outline-none mr-1 mb-1"
                            type="button">
                            <i class="fab fa-youtube"></i>
                        </button>
    
    
                    </a>
    
    
                    <a href="https://www.tiktok.com/@intelisoftw"
                        class="text-white hover:text-red-500 dark:hover:text-red">
                        <button class="bg-black text-white w-8 h-8 rounded-full outline-none focus:outline-none mr-1 mb-1"
                            type="button">
                            <i class="fab fa-tiktok"></i>
                        </button>
    
    
                    </a>

                    <a href="https://www.linkedin.com/in/intelisoftw/"
                        class="text-white hover:text-red-500 dark:hover:text-red">
                        <button class="bg-blue-400 text-white w-8 h-8 rounded-full outline-none focus:outline-none mr-1 mb-1"
                            type="button">
                            <i class="fab fa-linkedin"></i>
                        </button>
                    </a>
                    <a href="https://t.me/Intelisoftw"
                    class="text-white hover:text-red-500 dark:hover:text-red">
                    <button class="bg-blue-400 text-white w-8 h-8 rounded-full outline-none focus:outline-none mr-1 mb-1"
                        type="button">
                        <i class="fab fa-telegram"></i>
                    </button>
                </a>

    
    
    
                </div>
            </div>
        </div>
    </footer>

</html>