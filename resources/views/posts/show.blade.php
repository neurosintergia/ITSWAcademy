<x-app-layout>



    <div class="container py-8">
        <div class=" flex justify-center">


        <h1 class="text-4xl font-bold text-blue-700">{{$post->name}}</h1>
        </div>   
        <div class=" flex justify-center">
        <h2 class=" font-bold text-gray-600">{{$post->created_at->format('d M Y')}} - {{$post->user->name}}</h2>
        </div>
        <a  class="flex justify-center font-semibold  px-3 h-6 bg-blue-600 text-white rounded-full">{{$post->categori->name}} </a>
        <hr class="mt-1 mb-2 ">

        <div class=" flex justify-center">
        @foreach ($post->tags as $tag)
        <a href="{{route('posts.tag', $tag)}}" class=" inline-block px-3 h-6 bg-{{$tag->color}}-600 text-white rounded-full">{{$tag->name}} </a>
        @endforeach
        </div>
        <hr class="mt-1 mb-2">  
        <br>   
        <div class="text-lg text-justify m-4 text-gray-800 mb-2">
            {!!$post->extract!!}
        </div>

        <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">

            {{-- contenido principal --}}

                <div class="lg:col-span-2">

                    <figure>

                      @if ($post->image)

                      <img class="w-full  h-80 object-cover object-center" src="{{Storage::url($post->image->url)}}" alt="">

                      @else

                      <img class="w-full h-80 object-cover object-center" src="https://cdn.pixabay.com/photo/2016/05/14/15/10/banner-1391996_960_720.jpg" alt="">

                      @endif

                    </figure>

                    <div class="text-base text-gray-800 mt-4  m-4 text-justify mb-16">

                        {!!$post->body!!}

                    </div>
                    <div >

                        @auth
                         @livewire('question',['model' => $post])
                        @else
                        Inicia sesion para interactuar y ver los comentarios: 
                        <a class="text-gray-700 font-semibold" href="{{ route('login') }}" >
                            Ingresar
                        </a >
                        @endauth
                    </div>
                </div>

               {{-- contenido relacionado  --}}

            <aside class="m-4 ">

                <h1 class="text-2xl  font-bold text-gray-800 mb-4">Mas en {{$post->categori->name}} :</h1>

                <ul>

                    @foreach ($similares as $similar)

                        <li class="mb-4 flex justify-center">

                            <a class="grid lg:grid-cols-2" href="{{route('posts.show', $similar)}}">
                                <div class="col-span-1 flex items-center">
                                    @if ($similar->image)

                                    <img class="w-36 h-20 object-cover object-center" src="{{Storage::url($similar->image->url)}}" alt="">

                                    @else

                                    <img class="w-36 h-20 object-cover object-center" src="https://cdn.pixabay.com/photo/2016/05/14/15/10/banner-1391996_960_720.jpg" alt="">

                                    @endif
                                </div>

                                <div class="col-span-1">
                                    <div class="">
                                        <span class=" text-black">{{$similar->name}}</span>
                                    </div>
                            
                                    <div >
                                        <p class="text-justify "> {!!Str::limit($similar->extract, 30, '...')!!}</p>
                                    </div>
                                </div>
                             

                        </a>

                        </li>

                    @endforeach

                </ul>

            </aside>

        </div>

    </div>

  

</x-app-layout>

