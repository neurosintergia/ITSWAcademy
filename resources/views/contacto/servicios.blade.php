<x-app-layout>
    
 


<!-- component -->
<div class="text-gray-900  pr-0 pb-14 pl-0">
  <div class="w-full pt-4 pr-5 pb-6 pl-5 mt-0 mr-auto mb-0 ml-auto space-y-5 sm:py-8 md:py-12 sm:space-y-8 md:space-y-16
      max-w-7xl">
    <div class="flex flex-col items-center sm:px-5 md:flex-row">
      <div class="flex flex-col items-start justify-center w-full h-full pt-6 pr-0 pb-6 pl-0 mb-6 md:mb-0 md:w-1/2">
        <div class="flex flex-col items-start justify-center h-full space-y-3 transform md:pr-10 lg:pr-16
            md:space-y-5">
          <div class="bg-blue-800 flex items-center leading-none rounded-full text-gray-50 pt-1.5 pr-3 pb-1.5 pl-2
              uppercase ">
            <p class="inline">
              <svg class="w-3.5 h-3.5 mr-1" fill="currentColor" viewbox="0 0 20 20"
                  xmlns="http://www.w3.org/2000/svg"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0
                  00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755
                  1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1
                  0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"/></svg>
            </p>
            <p class="inline text-xs font-medium">Nueva</p>
          </div>
          <a class="text-4xl font-bold leading-none lg:text-5xl xl:text-6xl">Plataforma de cursos</a>
          <div class="pt-2 pr-0 pb-0 pl-0">
            <p class="text-sm font-medium inline">Desarrollado por:</p>
            <a href="https://intelisoftw.com/" class="inline text-sm font-medium mt-0 mr-1 mb-0 ml-1 underline">Intelisoftw</a>
            <a href="https://wa.me/529612206477/?text=Quiero%20cotizar%20la%20plataforma%20de%20cursos%20" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">Cotizar</a>
          </div>
        </div>
      </div>
      <div class="w-full md:w-1/2">
        <div class="block">
          <img src="{{asset('img/b1.jpg')}}" class="object-cover rounded-lg max-h-64 sm:max-h-96 btn- w-full h-full"/>
        </div>
      </div>
    </div>

    <div class="grid grid-cols-12 sm:px-5 gap-x-8 gap-y-16">
      <div class="flex flex-col items-center col-span-12 space-y-3 sm:col-span-6 xl:col-span-4">
       <img src="{{asset('img/bc3.jpg')}}" class="object-cover w-full mb-2 overflow-hidden rounded-lg shadow-sm max-h-56 btn-"/>
        <p class="bg-blue-800 flex items-center leading-none text-sm font-medium text-gray-50 pt-1.5 pr-3 pb-1.5 pl-3
            rounded-full uppercase inline-block"> <a href="{{route('courses.index')}}">Cursos</a> </p>
        <a href="{{route('courses.index')}}" class="text-lg text-center font-bold sm:text-xl md:text-2xl">Sube tus cursos en esta plataforma</a>
        <p class="text-sm text-black text-center">Juntos en esta transformación digital</p>
        <div class="pt-2 pr-0 pb-0 pl-0 ">
          <a href="{{route('courses.index')}}" class="  bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">Cursos</a>
        </div>
      </div>

      <div class="flex flex-col items-center col-span-12 space-y-3 sm:col-span-6 xl:col-span-4">
        <img src="{{asset('img/bg.jpg')}}" class="object-cover w-full mb-2 overflow-hidden rounded-lg shadow-sm max-h-56 btn-"/>
        <p class="bg-blue-800 flex items-center leading-none text-sm font-medium text-gray-50 pt-1.5 pr-3 pb-1.5 pl-3
            rounded-full uppercase inline-block"> <a href="{{route('posts.index')}}">Blog</a> </p>
        <a href="{{route('posts.index')}}" class="text-lg text-center font-bold sm:text-xl md:text-2xl">Sistema de blog administrable</a>
        <p class="text-sm text-black text-center">Profundizando en el conocimiento        </p>
        <div class="pt-2 pr-0 pb-0 pl-0 ">
          <a href="{{route('posts.index')}}" class="  bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">Blog</a>
        </div>
      </div>

      <div class="flex flex-col items-center col-span-12 space-y-3 sm:col-span-6 xl:col-span-4">
        <img src="{{asset('img/bc1.jpg')}}" class="object-cover w-full mb-2 overflow-hidden rounded-lg shadow-sm max-h-56 btn-"/>
        <p class="bg-blue-800 flex items-center leading-none text-sm font-medium text-gray-50 pt-1.5 pr-3 pb-1.5 pl-3
            rounded-full uppercase inline-block"> <a href="{{route('proyecto.info')}}">proyectos</a> </p>
        <a href="{{route('proyecto.info')}}" class="text-lg text-center font-bold sm:text-xl md:text-2xl">¿Necesitas un sitio web o una plataforma a la medidad?</a>
        <p class="text-sm text-black text-center">Ingresa tu información en el formulario situado en el apartado de proyectos para ponernos en contacto.</p>
        <div class="pt-2 pr-0 pb-0 pl-0 ">
          <a href="{{route('proyecto.info')}}" class="  bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">Ir a proyectos</a>
        </div>
      </div>

    </div>
  </div>
</div>



</x-app-layout>