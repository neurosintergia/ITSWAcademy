<x-app-layout>

    <!-- component -->
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
    
    
    <style>
        /*each image is referenced twice in the HTML, but each image only needs to be updated in the CSS*/
        .image1 {
          content: url("{{asset('img/bg12.png')}}")
        }
      
        .image2 {
          content: url("{{asset('img/instructor.png')}}")
        }
      
        .image3 {
          content: url("{{asset('img/int.png')}}")
        }
      
        .image4 {
          content: url("{{asset('img/ints.png')}}")
        }
      
        .image5 {
          content:  url("{{asset('img/g5.png')}}")
        }
          </style>
    
    
    
    
    
    
    @livewire('banner')

    
    
    <!-- component -->
    
      
        <section class="mx-auto max-w-2xl">
          <h2 class="text-4xl text-center tracking-wide font-extrabold font-serif leading-loose mb-2">Forma parte de la comunidad ITSW</h2>
          <div class="shadow-2xl relative">
            <!-- large image on slides -->
            <div class="mySlides hidden">
              <div class="image1 w-full object-cover"></div>
            </div>
            <div class="mySlides hidden">
              <div class="image2 w-full object-cover"></div>
            </div>
            <div class="mySlides hidden">
              <div class="image3 w-full object-cover"></div>
            </div>
            <div class="mySlides hidden">
              <div class="image4 w-full object-cover"></div>
            </div>
            <div class="mySlides hidden">
              <div class="image5 w-full object-cover"></div>
            </div>
      
            <!-- butttons -->
            <a class="absolute left-0 inset-y-0 flex items-center -mt-32 px-4 text-white hover:text-gray-800 cursor-pointer text-3xl font-extrabold" onclick="plusSlides(-1)">❮</a>
            <a class="absolute right-0 inset-y-0 flex items-center -mt-32 px-4 text-white hover:text-gray-800 cursor-pointer text-3xl font-extrabold" onclick="plusSlides(1)">❯</a>
      
            <!-- image description -->
            <div class="text-center text-white font-light tracking-wider bg-blue-800 py-2">
              <p id="caption"></p>
            </div>
      
            <!-- smaller images under description -->
            <div class="flex">
              <div>
                <img class="image1 description h-24 opacity-50 hover:opacity-100 cursor-pointer" src="#" onclick="currentSlide(1)" alt="Instructores">
              </div>
              <div>
                <img class="image2 description h-24 opacity-50 hover:opacity-100 cursor-pointer" src="#" onclick="currentSlide(2)" alt="Manuel Cervantes">
              </div>
              <div>
                <img class="image3 description h-24 opacity-50 hover:opacity-100 cursor-pointer" src="#" onclick="currentSlide(3)" alt="Ruth Cerezo">
              </div>
              <div>
                <img class="image4 description h-24 opacity-50 hover:opacity-100 cursor-pointer" src="#" onclick="currentSlide(4)" alt="Breyda Cervantes">
              </div>
              <div>
                <img class="image5 description h-24 opacity-50 hover:opacity-100 cursor-pointer" src="#" onclick="currentSlide(5)" alt="Ruth Cerezo">
              </div>
            </div>
          </div>
        </section>
      
      
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
    
    
        
    
        
        
        <section class="bg-white">
            <div class="max-w-5xl px-6 py-16 mx-auto flex">
    
                <div class=" items-center md:flex md:space-x-6 ">
    
                    <div class="order-2 md:w-1/2 ">
                        <h3 class="text-2xl font-semibold text-gray-800">Diseña tus metas y logra tus<br> objetivos para un mejor futuro </h3>
                        <p class="max-w-md mt-4 text-gray-600 text-justify">La necesidad de proporcionar clases en línea, obligó al profesorado a salir de las aulas y adentrarse en un espacio tecnológico desconocido para muchos para poder dar sus cátedras.
                        </p>
                     
                    </div>
        
                    <div class=" order-1 mt-8 md:mt-0 md:w-1/2">
                        <div class="flex items-center justify-center">
                            <div class="max-w-md lg:mr-8">
                                <img class="object-cover object-center w-full rounded-md shadow" style="height: 300px;"
                                    src="{{asset('img/bg5.png')}}">
                            </div>
                        </div>
                    </div>
    
                </div>
    
            </div>
        </section>
        
        <section class="bg-white">
            <div class="max-w-5xl px-6 py-16 mx-auto">
                <div class="items-center md:flex md:space-x-6">
                    <div class="md:w-1/2 ">
                        <h3 class="text-2xl font-semibold text-gray-800">Alineamiento pedagógico-digital<br> aprendiendo haciendo</h3>
                        <p class="max-w-md mt-4 text-gray-600 text-justify">Alinea tus objetivos pedagógicos con las herramientas digitales necesarias. Aprender con un método dinámico y eficaz, que mejorará tus habilidades. (Nunca fue tan fácil)</p>
                    </div>
                    <div class="mt-8 md:mt-0 md:w-1/2">
                        <div class="flex items-center justify-center">
                            <div class="max-w-md lg:mr-8">
                                <img class="object-cover object-center w-full rounded-md shadow" style="height: 300px;"
                                    src="{{asset('img/it.png')}}">
                            </div>
                        </div>
                    </div>
    
        
                   
    
                </div>
            </div>
        </section>
        
        <section class="bg-white">
      
            <div class="max-w-5xl px-6 py-16 mx-auto flex">
                <div class=" items-center md:flex md:space-x-6">
                    
                    <div class=" order-2 md:w-1/2 ">
                        <h3 class="text-2xl font-semibold text-gray-800">Desarrollando nuestros talentos <br>Impulsando nuevas competencias </h3>
                        <p class="max-w-md mt-4 text-gray-600 text-justify">Aprende a usar y aplicar las principales herramientas digitales de apoyo para la gestión total de tus actividades profesionales o empresariales, docentes o manipular los principales dispositivos electrónicos.</p>
                    </div>
    
                    <div class=" order-1 mt-8 md:mt-0 md:w-1/2">
                        <div class="flex items-center justify-center">
                            <div class="max-w-md  lg:mr-8">
                                <img class="object-cover object-center w-full rounded-md shadow" style="height: 300px;"
                                    src="{{asset('img/bg11.png')}}">
                            </div>
                        </div>
                    </div>
    
    
                </div>
            </div>
    
    
    
    
            <div class="max-w-5xl px-6 py-16 mx-auto ">
    
                <div class="grid gap-8 mt-10 md:mt-20 md:grid-cols-2">
                    <div class="flex space-x-4 ">
                        <svg class="w-6 h-6 text-gray-500 " viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M47.6268 23.7062C48.2466 24.4484 48.2466 25.5277 47.6268 26.2699L44.4812 30.0372C43.803 30.8493 43.4742 31.8971 43.5669 32.9512L44.0044 37.9287C44.0912 38.9165 43.4411 39.8188 42.4765 40.0491L38.0619 41.1031C36.9808 41.3612 36.0559 42.0575 35.5089 43.025L33.2053 47.099C32.6961 47.9995 31.5844 48.3631 30.6415 47.9375L26.6498 46.1358C25.6003 45.6621 24.3976 45.6636 23.3493 46.14L19.3597 47.9531C18.4161 48.3819 17.3014 48.0189 16.7912 47.1168L14.4911 43.0489C13.9441 42.0814 13.0192 41.3851 11.9381 41.127L7.52286 40.0728C6.55849 39.8426 5.90838 38.9406 5.99496 37.9529L6.43346 32.9505C6.52583 31.8968 6.19706 30.8494 5.5191 30.0375L2.37029 26.2665C1.75138 25.5253 1.75043 24.4477 2.36803 23.7054L5.52362 19.9127C6.1988 19.1012 6.52582 18.0557 6.43339 17.0041L5.99624 12.0308C5.90922 11.0408 6.56225 10.1372 7.52946 9.90904L11.9298 8.87123C13.0153 8.61522 13.9446 7.91765 14.4935 6.94684L16.7947 2.87709C17.3039 1.97664 18.4156 1.61302 19.3585 2.03858L23.3544 3.8422C24.4007 4.31444 25.5993 4.31444 26.6456 3.8422L30.6415 2.03858C31.5844 1.61301 32.6961 1.97663 33.2053 2.87709L35.5089 6.95112C36.0559 7.9186 36.9808 8.61486 38.0619 8.87297L42.4765 9.92701C43.4411 10.1573 44.0912 11.0596 44.0044 12.0474L43.5669 17.0249C43.4742 18.079 43.803 19.1268 44.4812 19.939L47.6268 23.7062ZM25 37.9326C26.8075 37.9326 28.2727 36.4674 28.2727 34.6599V34.4275C28.2727 32.6201 26.8075 31.1548 25 31.1548C23.1925 31.1548 21.7273 32.6201 21.7273 34.4275V34.6599C21.7273 36.4674 23.1925 37.9326 25 37.9326ZM25 28.377C26.8075 28.377 28.2727 26.9117 28.2727 25.1042V15.3162C28.2727 13.5087 26.8075 12.0435 25 12.0435C23.1925 12.0435 21.7273 13.5087 21.7273 15.3162V25.1042C21.7273 26.9117 23.1925 28.377 25 28.377Z"
                                stroke="currentColor" stroke-width="2" />
                        </svg>
        
                        <div>
                            <h4 class="text-xl font-medium text-gray-800 ">Investigación</h4>
                            <p class="max-w-lg mt-4 text-gray-600">Desarrollo de nuevas herramientas tecnológicas y análisis del mundo digital 
                            </p>
                        </div>
                    </div>
        
                    <div class="flex space-x-4">
                        <svg class="w-6 h-6 text-gray-500" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M1 25C1 11.8023 11.8023 1 25 1C38.1977 1 49 11.8023 49 25C49 38.1977 38.1977 49 25 49C11.8023 49 1 38.1977 1 25ZM33.36 35.3573C34.7228 36.1959 36.5074 35.771 37.346 34.4082C38.1913 33.0346 37.7522 31.2351 36.3692 30.4053L28.221 25.5164C27.6186 25.155 27.25 24.504 27.25 23.8014V14.375C27.25 12.7872 25.9628 11.5 24.375 11.5C22.7872 11.5 21.5 12.7872 21.5 14.375V25.8236C21.5 27.2127 22.2206 28.5023 23.4036 29.2302L33.36 35.3573Z"
                                stroke="currentColor" stroke-width="2" />
                        </svg>
        
                        <div>
                            <h4 class="text-xl font-medium text-gray-800 ">Actualización</h4>
                            <p class="max-w-lg mt-4 text-gray-600">Formación en nuevas herramientas digitales e información en los últimos avances en tecnología
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
        
        <section class="bg-white">
    
            <div align="center" class="flex justify-center">
                <a href="https://api.whatsapp.com/send?phone=529612206477">
                <img style="margin:5px" src="https://teantojamos.com/wp-content/uploads/2021/04/wp.png" width="40" height="40" alt="WhatsApp">
                </a>
                
                
                <a href="https://www.facebook.com/intelisoftw">
                <img style="margin:5px" src="https://teantojamos.com/wp-content/uploads/2021/04/fa.png" width="40" height="40" alt="Facebook">
                </a>
                
                <a href="https://www.instagram.com/intelisoftw/">
                <img style="margin:5px" src="https://teantojamos.com/wp-content/uploads/2021/04/ins.png" width="40" height="40" alt="Instagram"></a>
                
                <a href="https://www.youtube.com/channel/UClWwySEQaL_8XCJnrmk0A9A">
                <img style="margin:5px" src="https://teantojamos.com/wp-content/uploads/2021/04/yt.png" width="40" height="40" alt="YouTube"></a>
                
                <a href="https://twitter.com/intelisoftw">
                <img style="margin:5px" src="https://teantojamos.com/wp-content/uploads/2021/04/tw.png" width="40" height="40" alt="YouTube"></a>
                
                
                <a href="https://www.linkedin.com/in/intelisoftw/">
                <img style="margin:5px" src="https://intelisoftw.com/wp-content/uploads/2021/04/linkedin.png" width="35" height="35" alt="Facebook">
                </a>
                </div>
    
    
            <div class="max-w-5xl px-6 py-16 mx-auto">
                <div class="px-8 py-12 bg-gray-800 rounded-md md:px-20 md:flex md:items-center md:justify-between">
                    <div>
                        <h3 class="text-2xl font-semibold text-white">Contactanos para mayor información</h3>
                        <p class="max-w-md mt-4 text-gray-400">Convierte lo que sabes en una oportunidad para alcanzar tus objetivos</p>
                    </div>
        
                    <a class="block px-8 py-2 mt-6 text-lg font-medium text-center text-white transition-colors duration-300 transform bg-green-600 rounded md:mt-0 hover:bg-green-400"
                        href="https://wa.me/529612206477/?text=Hola%2C%20puede%20apoyarme%20en">WhatsApp</a>
                        <a class="block px-8 py-2 mt-6 text-lg font-medium text-center text-white transition-colors duration-300 transform bg-blue-700 rounded md:mt-0 hover:bg-blue-500"
                        href="tel:9612206477">Llamar</a>
                </div>
            </div>
        </section>
        
        <section class="bg-white">
            <div class="max-w-5xl px-6 py-16 mx-auto">
                <div class="md:flex md:justify-between">
                    <h2 class="text-3xl font-semibold text-gray-800">Centro Profesional de Capacitación<br> en Tecnologías y Programación
                   </h2>
                    <a href="#" class="block mt-6 text-indigo-700 underline md:mt-0">Cotizar Proyecto</a>
                </div>
        
                <div class="grid gap-8 mt-10 md:grid-cols-2 lg:grid-cols-3">
                    <div class="px-6 py-8 overflow-hidden bg-white rounded-md shadow-md">
                        <h2 class="text-xl font-medium text-gray-800">Talento</h2>
                        <p class="max-w-md mt-4 text-gray-400">Toda empresa necesita diferentes tipos de talentos</p>
                    </div>
        
                    <div class="px-6 py-8 overflow-hidden bg-white rounded-md shadow-md">
                        <h2 class="text-xl font-medium text-gray-800">Diciplina</h2>
                        <p class="max-w-md mt-4 text-gray-400">Establece un orden para el cumplimiento de tus reglas y lograr un aprendizaje - constantante </p>
                    </div>
        
                    <div class="px-6 py-8 overflow-hidden bg-white rounded-md shadow-md">
                        <h2 class="text-xl font-medium text-gray-800">Automatiza</h2>
                        <p class="max-w-md mt-4 text-gray-400">Conoce tu algoritmo, reduce tiempo y costos para  una mejor eficiencia </p>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="bg-white">
            <div class="max-w-5xl px-6 py-16 mx-auto text-center">
                <h2 class="text-3xl font-semibold text-gray-800">El Talento y  la Transformación Digital</h2>
                <p class="max-w-lg mx-auto mt-4 text-gray-600 text-justify">Los profesionales con talento son personas motivadas que disfrutan con lo que hacen, con competencias y capacidades para desempeñar su trabajo, que están en permanente actualización de sus conocimientos y ello les lleva a alcanzar resultados excepcionales.</p>
        
                <img class="object-cover object-center w-full mt-16 rounded-md shadow h-80"
                    src="{{asset('img/le.jpg')}}">
            </div>
        </section>
        
        <section class="bg-white">
            <div class="max-w-5xl px-6 py-16 mx-auto space-y-8 md:flex md:items-center md:space-y-0">
                <div class="md:w-2/3">
                    <div class="hidden md:flex md:items-center md:space-x-10">
                        <img class="object-cover object-center rounded-md shadow w-72 h-72"
                            src="https://images.unsplash.com/photo-1614030126544-b79b92e29e98?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80">
                        <img class="object-cover object-center w-64 rounded-md shadow h-96"
                            src="{{asset('img/bg1.jpg')}}">
                    </div>
                    <h2 class="text-3xl font-semibold text-gray-800 md:mt-6">Te proporcionamos las herramientas para que enseñes lo que te apasiona 
                    </h2>
                    <p class="max-w-lg mt-4 text-gray-600">
        Forma parte de esta nueva generacion del conocimiento e integrate a la comunidad ITSW
                    </p>
                </div>
                <div class="md:w-1/3">
                    <img class="object-cover object-center w-full rounded-md shadow" style="height: 700px;"
                    src="{{asset('img/bg4.jpg')}}">
                </div>
            </div>
        </section>
        
       
    
    </div>
    </x-app-layout>