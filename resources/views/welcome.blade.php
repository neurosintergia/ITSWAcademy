<x-app-layout>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>



 
<!-- component -->
    <!-- component -->
    
      <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
        <script>
          var cont=0;
      function loopSlider(){
        var xx= setInterval(function(){
              switch(cont)
              {
              case 0:{
                  $("#slider-1").fadeOut(400);
                  $("#slider-2").delay(400).fadeIn(400);
                  $("#sButton1").removeClass("bg-gray-800");
                  $("#sButton2").addClass("bg-gray-800");
              cont=1;
              
              break;
              }
              case 1:
              {
              
                  $("#slider-2").fadeOut(400);
                  $("#slider-1").delay(400).fadeIn(400);
                  $("#sButton2").removeClass("bg-gray-800");
                  $("#sButton1").addClass("bg-gray-800");
                 
              cont=0;
              
              break;
              }
              
              
              }},8000);
      
      }
      
      function reinitLoop(time){
      clearInterval(xx);
      setTimeout(loopSlider(),time);
      }
      
      
      
      function sliderButton1(){
      
          $("#slider-2").fadeOut(400);
          $("#slider-1").delay(400).fadeIn(400);
          $("#sButton2").removeClass("bg-gray-800");
          $("#sButton1").addClass("bg-gray-800");
          reinitLoop(4000);
          cont=0
          
          }
          
          function sliderButton2(){
          $("#slider-1").fadeOut(400);
          $("#slider-2").delay(400).fadeIn(400);
          $("#sButton1").removeClass("bg-gray-800");
          $("#sButton2").addClass("bg-gray-800");
          reinitLoop(4000);
          cont=1
          
          }
      
          $(window).ready(function(){
              $("#slider-2").hide();
              $("#sButton1").addClass("bg-gray-800");
              
      
              loopSlider();
           
              
          
          
          
          
          });
      
        
        </script>
        
  
      <!-- component -->
      <style>
          /* RED BORDER ON INVALID INPUT */
          .check input:invalid {
              border-color: red;
          }
        
          /* FLOATING LABEL */
          .label-floating input:not(:placeholder-shown),
          .label-floating textarea:not(:placeholder-shown) {
              padding-top: 1.4rem;
          }
          .label-floating input:not(:placeholder-shown) ~ label,
          .label-floating textarea:not(:placeholder-shown) ~ label {
              font-size: 0.8rem;
              transition: all 0.2s ease-in-out;
              color: #1f9d55;
              opacity: 1;
          }
        
        </style>
                
      

@livewire('banner')




<!-- ====== Blog Section Start -->
<section class="pt-20 lg:pt-[120px] pb-10 lg:pb-20">
   <div class="container">
        <div class="flex flex-wrap justify-center -mx-4">
          <div class="w-full px-4">
              <div class="text-center mx-auto  mb-[60px] lg:mb-20 max-w-[510px]">
                <span class="font-semibold text-lg text-primary mb-2 block">
                Expansión de la Consciencia
                </span>
                <h2 class="font-bold text-3xl sm:text-4xl md:text-[40px] text-dark mb-4" >
                    Neurosintergia
                </h2>
                <p class="text-base text-body-color">
                    Repositorio de cursos, talleres, entrenamientos y formaciones neurosintergicas.
                </p>
              </div>
          </div>
        </div>
          <div class="flex flex-wrap -mx-4">
            <div class="w-full md:w-1/2 justify-center lg:w-1/3 px-4">
                <div class="max-w-[370px] justify-center mx-auto mb-10">
                  <div class="rounded overflow-hidden mb-8">
                      <img src="{{asset('img/mcl.jpeg')}}" alt="image" class="w-full" />
                  </div>
                  <div>
                      <h3 class="flex justify-center">
                        <a
                            href="javascript:void(0)"
                            class="
                            font-semibold
                            text-xl
                            text-center
                            sm:text-2xl
                            lg:text-xl
                            xl:text-2xl
                            mb-4
                            inline-block
                            text-dark
                            hover:text-primary
                            "
                            >
                        MasterClass con Enfoque Neurosintérgico
                        </a>
                      </h3>
                      <p class="text-base text-body-color">
                        Clases condensadas que mueven a la persona en su ámbito profesional, personal o económico con el enfoque neurosintérgico.
                      </p><br>
                      <a href="http://127.0.0.1:8000/cursos?order=new&category%5B0%5D=1&level%5B0%5D=2"> <span
                        class="
                        bg-primary
                        rounded
                        flex
                        text-center
                        py-1
                        px-4
                        text-lg
                        leading-loose
                        font-semibold
                        text-white
                        mb-5
                        justify-center
                        "
                        >
                        Inscribirse 
                     </span>
                  </a>
                  </div>
                </div>
            </div>
          <div class="w-full md:w-1/2 lg:w-1/3 px-4">
            <div class="  justify-center mx-auto mb-10">
              <div class="rounded overflow-hidden mb-8">
                  <img
                  src="{{asset('img/med.jpeg')}}"
                    alt="image"
                    class="w-full"
                    />
              </div>
              <div>
                
                <h3 class="flex justify-center">
                    <a
                        href="javascript:void(0)"
                        class="
                        font-semibold
                        text-xl
                        text-center
                        sm:text-2xl
                        lg:text-xl
                        xl:text-2xl
                        mb-4
                        inline-block
                        text-dark
                        hover:text-primary
                        "
                        >
                    Meditaciones Neurosintérgicas 
                    </a>
                  </h3>
                  <p class="text-base text-body-color">
                    Sesiones de meditación pregrabadas para lograr la unidad de conciencia, en tres niveles de meditación de acuerdo al objetivo particular.
                  </p><br>
                  <a href="#"> <span
                    class="
                    bg-primary
                    rounded
                    flex
                    text-center
                    py-1
                    px-4
                    text-lg
                    leading-loose
                    font-semibold
                    text-white
                    mb-5
                    justify-center
                    "
                    >
                    Inscribirse 
                 </span>
              </a>
              </div>
          </div>
       </div>
         <div class="w-full md:w-1/2 lg:w-1/3 px-4">
            <div class="max-w-[370px] mx-auto mb-10">
               <div class="rounded overflow-hidden mb-8">
                  <img
                  src="{{asset('img/sem.jpeg')}}"
                     alt="image"
                     class="w-full"
                     />
               </div>
               <div>
                <h3 class="flex justify-center">
                     <a
                        href="javascript:void(0)"
                        class="
                        font-semibold
                        text-xl
                        text-center
                        sm:text-2xl
                        lg:text-xl
                        xl:text-2xl
                        mb-4
                        inline-block
                         text-dark
                        hover:text-primary
                        "
                        >
                     Seminarios Neurosintérgicos
                     </a>
                  </h3>
                  <p class="text-base text-body-color text-justify">
                    Seminario de investigación y de las bases teóricas de la Neurosintergia y de la Teoría Sintérgica. Hablamos de la aplicación de la Teoría Sintérgica, con respecto a la experiencia consciente y a las habilidades chamanicas.
                  </p><br>
                  <a href="#"> <span
                    class="
                    bg-primary
                    rounded
                    flex
                    text-center
                    py-1
                    px-4
                    text-lg
                    leading-loose
                    font-semibold
                    text-white
                    mb-5
                    justify-center
                    "
                    >
                    Inscribirse 
                 </span>
               </a>
               </div>


               
            </div>

            
         </div>
      </div>
   </div>
</section>
<!-- ====== Blog Section End -->










<section class=" py-12" style="background: #042156">
    <h1 class="text-center text-white text-3xl">Cursos y Talleres</h1>
    <p class="text-center text-white">Academy</p>
    
    <div class="flex justify-center mt-4">
    <a href="{{route('courses.index')}}" class="bg-blue-600 hover:bg-blue-800 text-white font-bold py-2 px-4 rounded">
        Ver mas
    </a>
    </div> 
</section>



  




<section class="mt-24">
    <h1  class="text-center text-3xl text-gray-600">Ultimos Cursos</h1>
    <p class="text-center text-gray-500 text-sm mb-6">Forma parte de la comunidad</p>

    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-x-6 gap-y-8">
        

        @foreach ($courses as $course)
        <!-- se esta utilizando un componente en la carpeta componets-->
        <x-course-card :course="$course" />
        @endforeach
    </div>

</section>


<section class=" py-12" >
   
    
    <div class="flex justify-center  mt-2">
    <a href="{{route('courses.index')}}" class="bg-blue-600 text-center   w-44 hover:bg-blue-800 text-white font-bold py-2 px-4 rounded-lg">
        Más Cursos
    </a>
    </div> 
</section>


<section class="mt-24">
    
    
    <h1 class="text-gray-600 text-center text-3xl mb-6">Contenido</h1>
   
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-x-6 gap-y-8">

    <article>
        <figure >
            <img  class="rounded-xl h-36 w-full object-cover" src="{{asset('img/sw.jpg')}}" alt="">
        </figure>

        <header class="m-2 text-center">
            <a href="https://itswacademy.com/cursos/administracion-de-servidores-web" class="text-xl text-gray-700">Administración de servidores web GNU-Linux</a>
        </header>
        <p class="text-sm text-gray-500 text-justify ">Administración de servidores web en sistema operativo GNU-Linux, conoce mas a fondo el funcionamiento de los servidores web
            aprende a montar servidores en pocos minutos</p>
    </article>

    <article>
        <figure>
            <img class="rounded-xl h-36 w-full object-cover"  src="{{asset('img/an.png')}}" alt="">
        </figure>

        <header class="m-2 text-center">
            <a href="https://itswacademy.com/cursos/herramientas-digitales-para-la-administracion-de-negocios" class="text-center text-xl text-gray-700 ">Herramientas digitales para la administración de negocios</a>
        </header>
        <p class="text-sm text-gray-500 text-justify ">Aprende a usar y aplicar las principales herramientas digitales de apoyo para la gestión total de tus actividades profesionales o empresariales</p>
    </article>

    <article>
        <figure>
            <img class="rounded-xl h-36 w-full object-cover"  src="{{asset('img/home/7.jpg')}}" alt="">
        </figure>
        <header class="m-2 text-center">
            <a href="https://itswacademy.com/cursos/herramientas-digitales-para-dise-ar-e-impartir-clases-en-linea" class="text-center text-xl text-gray-700">Herramientas digitales para impartir clases en línea</a>
        </header>
        <p class="text-sm text-gray-500 text-justify">Este curso busca ser una herramienta de apoyo en el que las y los participantes, de manera sencilla y práctica lleven a cabo la planeación, el diseño y la impartición de su clase en un entorno a distancia</p>
    </article>

    <article>
        <figure>
            <img class="rounded-xl h-36 w-full object-cover"  src="{{asset('img/3.PNG')}}" alt="">
        </figure>
        <header class="m-2 text-center">
            <a href="https://itswacademy.com/cursos/soporte-e-infraestructura-de-equipos-de-computo" class="text-center text-xl text-gray-700">Soporte e infraestructura de equipos de cómputo</h1>
        </header>
        <p class="text-sm text-gray-500 text-justify ">Identificar y resolver los principales problemas que se presenten en un equipo de cómputo,  a través de un diagnóstico eficiente y así  diseñar propuestas de solución a la falla. </p>
    </article>
    </div>
</section>

<!-- Seccion de post -->


<section style="background: #042156" class="mt-24  py-12">
    <h1 class="text-center text-white text-3xl"> Publicaciónes</h1>
  
<div class="flex justify-center mt-4">
    <a href="{{route('posts.index')}}" class="hover:bg-blue-500 bg-blue-700 text-white font-bold py-2 px-4 rounded">
        Ver mas
    </a>
    </div>

</section>


<div class="container py-8" >

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        @foreach ($posts as $post)
        <article class="w-full h-80 bg-cover bg-center @if($loop->first) md:col-span-2 @endif" style="background-image: url(@if($post->image) {{Storage::url($post->image->url)}} @else https://cdn.pixabay.com/photo/2016/05/14/15/10/banner-1391996_960_720.jpg @endif)">
       <div class="w-full h-full px-8 flex flex-col justify-center">
        <div class="mb-2">
            @foreach ($post->tags as $tag)
            <a href="{{route('posts.tag', $tag)}}" class="inline-block px-3 h-6 bg-{{$tag->color}}-600 text-white rounded-full">{{$tag->name}} </a>
            @endforeach
         
        </div>
        <h1 class=" text-2xl flex justify-center font-semibold   bg-blue-900 text-white rounded-full">
              <a href="{{route('posts.show', $post)}}">
                 {{$post->name}} 
              </a>
          </h1>
       </div>
        </article>
        @endforeach
    </div>

    <div class="mt-4">
    {{$posts->links()}}
    </div>

</div>


<!-- Seccion   -->
<!-- component -->


   

      <section class="bg-white dark:bg-gray-900">
        <div class="py-8 px-4 mx-auto max-w-screen-xl sm:py-16 lg:px-6">
            <div class="mx-auto max-w-screen-sm text-center">
                <h2 class="mb-4 text-4xl font-extrabold leading-tight text-gray-900 dark:text-white">!Inicia Hoy¡</h2>
                <p class="mb-6 font-light text-gray-500 dark:text-gray-400 md:text-lg">Preparate en el horario que gustes</p>
                <a href="#" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">Tomar curso</a>
            </div>
        </div>
    </section>

    
    <section class="mt-4">      
      <div class="sliderAx h-auto">
          <div id="slider-1" class="container mx-auto">
              <div class=" bg-center lg:bg-cover   h-auto text-white py-20 px-10 object-fill" style="background-image: url({{asset('img/bg3.jpg')}})">
               <div class="md:w-1/2 ">
              <p class="font-bold text-sm uppercase">Enseña tu talento</p>
              <p class="text-3xl font-bold">Generando nuevas competencias </p>
              <p class="text-2xl mb-10 leading-none">Llega a tus objetivos </p>
            
              </div>  
          </div> <!-- container -->
          <br>
          </div>
          <div id="slider-2" class="container mx-auto">
              <div class="bg-cover lg:bg-cover bg-top  h-auto text-white py-20 px-10 object-fill" style="background-image: url({{asset('img/bg3.jpg')}})">
          
               <p class="font-bold text-sm uppercase">Ganancias desde casa</p>
              <p class="text-3xl font-bold">Monetiza tus conocimientos</p>
              <p class="text-2xl mb-10 leading-none">Educacion y bienestar</p>
             
              
              </div> <!-- container -->
          <br>
          </div>
          </div>
      <div  class="flex justify-between w-12 mx-auto pb-2">
              <button id="sButton1" onclick="sliderButton1()" class="bg-blue-700 rounded-full w-4 pb-2 " ></button>
          <button id="sButton2" onclick="sliderButton2() " class="bg-blue-700 rounded-full w-4 p-2"></button>
      </div>
  
  </section>

<!-- fin de sesion  --> 

@push('script')
    

 

<script>
    //JS to switch slides and replace text in bar//
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
      showSlides(slideIndex += n);
    }

    function currentSlide(n) {
      showSlides(slideIndex = n);
    }

    function showSlides(n) {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("description");
      var captionText = document.getElementById("caption");
      if (n > slides.length) {
        slideIndex = 1
      }
      if (n < 1) {
        slideIndex = slides.length
      }
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
      }
      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" opacity-100", "");
      }
      slides[slideIndex - 1].style.display = "block";
      dots[slideIndex - 1].className += " opacity-100";
      captionText.innerHTML = dots[slideIndex - 1].alt;
    }
  </script>

<script>
    Livewire.on('glider', function(id){



    new Glider(document.querySelector('.glider-'+id), {
    slidesToShow: 1,
    slidesToScroll: 1,
    draggable: true,
    dots: '.glider-' + id + '~ .dots',
    arrows: {
        prev: '.glider-'+ id + '~ .glider-prev',
        next: '.glider-'+ id + '~ .glider-next'
    },
    responsive: [
        {
            breakpoint: 640,
            settings: {
                slidesToShow: 2.5,
                slidesToScroll: 2,
            }
        },
        {
            breakpoint: 768,
            settings: {
                slidesToShow: 3.5,
                slidesToScroll: 3,
            }
        },
        {
            breakpoint: 1024,
            settings: {
                slidesToShow: 4.5,
                slidesToScroll: 4,
            }
        },
        {
            breakpoint: 1280,
            settings: {
                slidesToShow: 5.5,
                slidesToScroll: 5,
            }
        },
    
    ]
    });


    } );
</script>
@endpush
  
</x-app-layout>