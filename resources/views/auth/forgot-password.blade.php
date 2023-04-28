<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <img class="h-24" src="{{asset('img/home/logo2.png')}}" alt="">
        </x-slot>

        <div class="mb-2 text-sm text-gray-600 text-justify">
            {{ __('¿Olvidaste tu contraseña? No hay problema. Simplemente envianos tu  correo electronico y enviaremos a su cuenta de correo una contraseña nueva') }}
        </div>

        @if (session('status'))
            <div class="mb-4 font-medium text-sm text-green-600">
                {{ session('status') }}
            </div>
        @endif

        <x-jet-validation-errors class="mb-2" />
        <form method="POST" action="{{ route('password.email') }}">
            @csrf

            <div class="block">
                <x-jet-label for="email" value="{{ __('Email') }}" />
                <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
            </div>

            <div class="flex items-center justify-end mt-4">
                <x-jet-button>
                    {{ __('Enviar enlace para restablecer contraseña') }}
                </x-jet-button>
            </div>
        </form>

        <div class="max-w-5xl px-6 py-16 mx-auto">
            <h2 class="text-center text-xl">Solicitar contraseña al administrador</h2>
                
           
            <div style="background: #0C166A"  class="px-8 py-12  rounded-md md:px-10 md:flex md:items-center md:justify-between">
              

                <a class="block px-8 py-2 mr-2 mt-4 text-lg font-medium text-center text-white transition-colors duration-300 transform bg-green-600 rounded md:mt-0 hover:bg-green-400"
                    href="https://wa.me/529612206477/?text=Hola%2C%20puede%20apoyarme%20con%20mi%20contraseña%20mi%20correo%20es:">WhatsApp</a>

                    <a class="block px-8 py-2 mt-6 text-lg font-medium text-center text-white transition-colors duration-300 transform bg-blue-700 rounded md:mt-0 hover:bg-blue-500"
                    href="tel:9612206477">Llamar</a>
            </div>
        </div> 

    </x-jet-authentication-card>
</x-guest-layout>