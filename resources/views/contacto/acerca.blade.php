<x-app-layout>


@livewire('banner')


<section>

  <!-- component -->
<style>
  .bg-dots{
    background-image: url(https://assets-global.website-files.com/5b5a66e9f3166b36708705fa/5dea7a12bb83ab1f13040de5_cx-dots.svg);
    background-repeat: no-repeat
  }
</style>

<div class="m-auto max-w-6xl p-12">
   <div class="flex flex-col md:flex-row ">
      <div class="md:w-1/2 max-w-md flex flex-col justify-center">
         <div class="md:text-5xl text-2xl uppercase font-black">ITSW-Academy</div>
         <div class="text-xl mt-4">Una academia de consciencia</div>
         <div class="my-5 h-16 ">
            <a href="{{route('courses.index')}}" class="shadow-md font-medium py-2 px-4 text-yellow-100
               cursor-pointer bg-yellow-600 hover:bg-yellow-500 rounded text-lg text-center ">Cursos</a>
         </div>
      </div>
      <div class="flex md:justify-end w-full md:w-1/2 -mt-5">
         <div class="bg-dots">
            <div class="shadow-2xl max-w-md z-10 rounded-full mt-6 ml-4">
               
               <div class="text-2xl p-10 bg-white">"Nuestro objetivo es expandir tu consciencia para llevarte al siguiente nivel de evolución"</div>
            </div>
         </div>
      </div>
   </div>
</div>

</section>

<section style=" background: #0C166A;" class="  sm:py-32 py-16">
  <h2 class="text-white text-center font-bold text-5xl mb-8"> Equipo ITSW </h2>
  <div class="container mx-auto sm:flex-row flex-col flex ">
   

      <div class="sm:w-1/3 w-full sm:mb-0 mb-16">
          <img src="{{asset('img/Manuel.jpeg')}}" class=" object-cover rounded-full w-24 h-24 mx-auto mb-2">
          <p class="font-bold  text-gray-200 text-center text-xl">Manuel Cervantes - Director </p>
          <p class="italic text-gray-300  text-justify p-6">Licenciado en sistemas Computacionales con Diplomado en Marketing Digital.
              Administrador de servidores GNU-Linux, Formación en Supercomputo y simulación. Desarrollador de software, Diseño de sistemas y servicios basados en las TIC e IoT.</p>
          
      </div>
      <div class="sm:w-1/3 w-full sm:mb-0 mb-16">
          
         <img src="{{asset('img/33.png')}}" class=" object-cover rounded-full w-24 h-24 mx-auto mb-2">
         <p class="font-bold  text-gray-200 text-center text-xl">Ruth Cerezo - <br>Socia estratégica</p>
         <p class="italic text-gray-300 text-justify p-6">Directora de Neurosintergia, maestra en Psicobiología por la UNAM. Creadora de la Meditación Neurosintérgica y del enfoque terapéutico neurosintérgico. Experta en modelos educativos y desarrollo pedagógico.</p>
         
     </div> 
      
      <div class="sm:w-1/3 w-full sm:mb-0 mb-16">
          <img src="{{asset('img/Paty.jpeg')}}" class=" object-cover rounded-full w-24 h-24 mx-auto mb-2">
          <p class="font-bold  text-gray-200 text-center text-xl">Breyda Cervantes - Community Manager</p>
          <p class="italic text-gray-300 text-justify   p-6">Social Media, Community Manager, con estudios en Administración y Gestión Empresarial</p>
          
      </div>

     
      <div class="sm:w-1/3 w-full sm:mb-0 mb-16">
          
        <img src="{{asset('img/Luis.jpeg')}}" class=" object-cover rounded-full w-24 h-24 mx-auto mb-2">
        <p class="font-bold  text-gray-200 text-center text-xl">Luis Cervantes - Diseño</p>
        <p class="italic text-gray-300 text-justify p-6">Diseñador con experiencia en redes sociales y administración de negocios.</p>
        
    </div> 
    
 
  </div>
</section>



<section class="text-gray-600 body-font">
    <div class="container mx-auto flex px-5 py-4 md:flex-row flex-col items-center">
      <div class="lg:max-w-lg lg:w-full md:w-1/2 w-5/6 mb-10 md:mb-0">
        <img class="object-cover object-center rounded" alt="hero" src="{{asset('img/ns&itsw.png')}}">
      </div>
      <div class="lg:flex-grow md:w-1/2 lg:pl-24 md:pl-16 flex flex-col md:items-start md:text-left items-center text-center">
        <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">Intelisoftw
          <br class="hidden lg:inline-block">& Neurosintergia
        </h1>
        <p class="mb-8 leading-relaxed"> En esta plataforma encontraras cursos, talleres e investigaciones sobre áreas de tecnología y desarrollo digital; además de cursos 
         y talleres que harán de ti una persona en equilibrio.</p>
        <div class="flex justify-center">
          <a  href="https://neurosintergia.com/" class="inline-flex text-white bg-red-700 border-0 py-2 px-6 focus:outline-none hover:bg-red-500 rounded text-lg">Neurosintergia</a>
          <a href="https://intelisoftw.com/" class="ml-4 inline-flex text-white bg-blue-700 border-0 py-2 px-6 focus:outline-none hover:bg-blue-500 rounded text-lg">Intelisoftw</a>
        </div>
      </div>
    </div>
  </section>

  <section>

    <!-- component -->
<style>
  .top-50{
    top: 50%
  }
  </style>
  <section class="max-w-6xl mx-auto my-10">
     <div class="flex md:flex-row flex-col p-5">
        <div class="md:w-1/2">
           <div class="min-h-64">
              <div class="text-3xl py-5" style="">Inscribirse es muy fácil</div>
              <div class="pb-5" style="">Guíate por los siguientes pasos.</div>
           </div>
           <div class="py-5 flex flex-row justify-center">
              <div class="flex flex-col w-24 items-center cursor-pointer">
                 <div class="w-6 h-6 flex items-center justify-center">
                    <div class="rounded-full bg-teal-700 text-sm text-teal-100 transition-all transform ease-in-out duration-200 w-6 h-6 font-bold flex justify-center relative">
                     1
                      <div class="absolute transition-all transform ease-in-out duration-200 top-50 left-0 border-t-2 w-10 ml-6 border-teal-700 border-dashed"></div>
                    </div>
                 </div>
                 <div class="my-4 text-teal-700 text-xs">Ve a cursos</div>
              </div>
              <div class="flex flex-col w-24 items-center cursor-pointer">
                 <div class="w-6 h-6 flex items-center justify-center">
                    <div class="rounded-full bg-teal-700 text-sm text-teal-100 transition-all transform ease-in-out duration-200 w-6 h-6 font-bold flex justify-center relative">
                       2 
                       <div class="absolute transition-all transform ease-in-out duration-200 top-50 right-0 border-t-2 w-10 mr-6 border-teal-700 border-dashed"></div>
                       <div class="absolute transition-all transform ease-in-out duration-200 top-50 left-0 border-t-2 w-10 ml-6 border-teal-700 border-dashed"></div>
                    </div>
                 </div>
                 <div class="my-4 text-teal-700 text-xs">Elige</div>
              </div>
              <div class="flex flex-col w-24 items-center cursor-pointer">
                 <div class="w-6 h-6 flex items-center justify-center">
                    <div class="rounded-full bg-teal-700 text-sm text-teal-100 transition-all transform ease-in-out duration-200 w-6 h-6 font-bold flex justify-center relative">
                      3
                      <div class="absolute transition-all transform ease-in-out duration-200 top-50 right-0 border-t-2 w-10 mr-6 border-teal-700 border-dashed"></div>
                       <div class="absolute transition-all transform ease-in-out duration-200 top-50 left-0 border-t-2 w-10 ml-6 border-teal-700 border-dashed"></div>
                    </div>
                 </div>
                 <div class="my-4 text-teal-700 text-xs">Matriculate</div>
              </div>
              <div class="flex flex-col w-24 items-center cursor-pointer">
                 <div class="w-6 h-6 flex items-center justify-center">
                    <div class="rounded-full bg-teal-700 text-sm text-teal-100 transition-all transform ease-in-out duration-200 w-6 h-6 font-bold flex justify-center relative">
                       4<div class="absolute transition-all transform ease-in-out duration-200 top-50 right-0 border-t-2 w-10 mr-6 border-teal-700 border-dashed"></div>
                    </div>
                 </div>
                 <div class="my-4 text-teal-700 text-xs">Expándete</div>
              </div>
           </div>
        </div>
        <div class="md:w-1/2 flex flex-col items-center justify-center h-96"><img src="{{asset('img/bc1.jpg')}}" alt="step" class="h-64 object-scale-down shadow-lg rounded"></div>
     </div>
  </section>
  </section>


</x-app-layout>