<x-app-layout>



        <!-- component -->
    
        <!-- Nuevos datos  -->
      
    @livewire('banner')

    
    
    
    <section>
        <div class="mt-12 ">
          
            <div class="flex mt-4 space-x-6 justify-center sm:mt-0">
                <a href="https://wa.me/529612206477/?text=Hola%2C%20puede%20apoyarme%20en"
                class="text-white hover:text-red-500 dark:hover:text-red">
                <button
                    class="bg-green-600 text-white w-10 h-10 rounded-full outline-none focus:outline-none mr-1 mb-1"
                    type="button">
                    <i class="fab fa-whatsapp"></i>
                </button>
                </a>
                <a href="https://www.facebook.com/intelisoftw"
                    class="text-white hover:text-red-500 dark:hover:text-red">
                    <button
                        class="bg-blue-800 text-white w-10 h-10 rounded-full outline-none focus:outline-none mr-1 mb-1"
                        type="button">
                        <i class="fab fa-facebook"></i>
                    </button>
                </a>
             
                <a href="https://www.instagram.com/intelisoftw/"
                    class="text-white hover:text-red-500 dark:hover:text-red">
                    <button class="bg-red-800 text-white w-10 h-10 rounded-full outline-none focus:outline-none mr-1 mb-1"
                        type="button">
                        <i class="fab fa-instagram"></i>
                    </button>
                </a>

                <a href="https://twitter.com/intelisoftw" class="text-white hover:text-red-500 dark:hover:text-red">

                    <button
                        class="bg-blue-400 text-white w-10 h-10 rounded-full outline-none focus:outline-none mr-1 mb-1"
                        type="button">
                        <i class="fab fa-twitter"></i>
                    </button>

                </a>
                <a href="https://www.youtube.com/@intelisoftw"
                    class="text-white hover:text-red-500 dark:hover:text-red">
                    <button class="bg-red-600 text-white w-10 h-10 rounded-full outline-none focus:outline-none mr-1 mb-1"
                        type="button">
                        <i class="fab fa-youtube"></i>
                    </button>


                </a>


                <a href="https://www.tiktok.com/@intelisoftw"
                    class="text-white hover:text-red-500 dark:hover:text-red">
                    <button class="bg-black text-white w-10 h-10 rounded-full outline-none focus:outline-none mr-1 mb-1"
                        type="button">
                        <i class="fab fa-tiktok"></i>
                    </button>


                </a>

                <a href="https://www.linkedin.com/in/intelisoftw/"
                    class="text-white hover:text-red-500 dark:hover:text-red">
                    <button class="bg-blue-400 text-white w-10 h-10 rounded-full outline-none focus:outline-none mr-1 mb-1"
                        type="button">
                        <i class="fab fa-linkedin"></i>
                    </button>
                </a>
                <a href="https://t.me/Intelisoftw"
                class="text-white hover:text-red-500 dark:hover:text-red">
                <button class="bg-blue-400 text-white w-10 h-10 rounded-full outline-none focus:outline-none mr-1 mb-1"
                    type="button">
                    <i class="fab fa-telegram"></i>
                </button>
            </a>




            </div>
        </div>
    
        </section>
    
        
    
    
    
    
   
           
      
    
    
    
    
    
    <!-- fines de datos -->
    
    
    
      <form id="contact-me" action="{{route('contacto.store')}}" method="POST" class="w-full mx-auto max-w-3xl bg-white shadow p-8 text-gray-700 ">
      
      @csrf
          <h2 class="w-full my-2 text-3xl text-center font-bold leading-tight ">Formulario de contacto</h2>
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
              <button class="w-full shadow bg-teal-400 bg-blue-800 hover:bg-teal-400 focus:shadow-outline focus:outline-none text-white hover:bg-blue-500 font-bold py-2 px-4 rounded"
                  type="submit">
                  Enviar
              </button>
      
          </div>
      </form>
      
      @if (session('info'))
          <script>
              alert("{{session('info')}}");
              </script>
      @endif
      <script>
      
      
      //RED BORDER ON INVALID INPUT
      document.getElementById('contact-me').addEventListener("invalid", function (event) {
          this.classList.add('check');
      }, true);
      
      
      
      
          // TEXT AREA AUTO EXPAND
      var textarea = document.querySelector('textarea.autoexpand');
      
      textarea.addEventListener('keydown', autosize);
      
      function autosize(){
        var el = this;
        setTimeout(function(){
          el.style.cssText = 'height:auto; padding: 1.4rem .2rem .5rem';
          
          el.style.cssText = 'height:' + el.scrollHeight + 'px';
        },0);
      }
      
      
      
      </script>
        </div>
     
    
    </x-app-layout>