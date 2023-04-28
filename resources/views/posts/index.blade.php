<x-app-layout>
   


  

    @livewire('banner')







    
<section style="background: #042156"  class="mb-6  py-12">
    <h1 class="text-center text-white text-3xl"> Profundizando en el conocimiento</h1>


   
</section>

<section class="max-w-6xl  mx-auto px-4 sm:px-6 lg:px-8 pb-20">
     
<div class=" grid lg:grid-cols-4">
    <div class=" col-span-1 mb-4 ">
            <form action="{{route('posts.index')}}">
                <div class="">
                <p class="text-lg font-semibold mt-4">Ordenar por:</p>

                <select class="block appearance-none bg-white border border-gray-400 hover:border-gray-500 px-4 py-2 pr-8 rounded shadow leading-tight focus:outline-none focus:shadow-outline mb-6" name="order">
                    <option value="new">Nuevos</option>
                    <option value="old" @selected(request(('order') == 'old'))>Anteriores</option>
                </select>
                </div>
                <div class="mb-6">
                  
                    <p class="text-lg font-semibold">Categorias:</p>
                    <ul>
                        @foreach ($categories as $category)
                            <li>
                                <label>
                                    <x-jet-checkbox  name="category[]" value="{{$category->id}}" :checked="is_array(request('category')) && in_array($category->id, request('category')) "/>
                                
                                    <span class="ml-2 text-gray-700"> {{$category->name}}</span>
                                </label>
                            </li>    
                        @endforeach
                    </ul>
                </div>
               
                <x-jet-button>
                    Aplicar filtros
                </x-jet-button>
            </form>

    <hr class="mt-1 mb-2">  
    </div>

    <div class=" col-span-3">
            <div class=" space-y-8">

                @foreach ($posts as $post)
                        <article class=" grid lg:grid-cols-2  ">

                            <figure class=" flex justify-center" >
                                    <img class=" w-96 h-52 object-cover" src="@if($post->image) {{Storage::url($post->image->url)}} @else https://cdn.pixabay.com/photo/2016/05/14/15/10/banner-1391996_960_720.jpg @endif"  alt="{{$post->title}}">
                            </figure>

                            <div>

                                <h1 class=" text-3xl text-blue-900 text-center  font-bold mt-2">
                                    <a href="{{route('posts.show', $post)}}">{{$post->name}} </a>                         
                                </h1>                                    
                                <div class=" text-center">
                                    <p class=" text-gray-700">{{$post->created_at->format('d M Y')}} - {{$post->user->name}}</p>
                                </div>                              
                                <div class="  text-black ">
                                    <p class="text-justify"> {!!Str::limit($post->extract, 50, '...')!!}</p>
                                </div>
                                <br>
                                <div class="flex justify-center">
                                <a href="{{route('posts.show', $post)}}" class="bg-blue-900 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded">
                                    Leer más
                                </a>
                                </div>
                                  <br>
                                <hr class="mt-1 mb-2 ">
                                <div class="flex justify-center " >
                                    @foreach ($post->tags as $tag)
                                    <a href="{{route('posts.tag', $tag)}}" class=" m-1 inline-block px-3 h-6 bg-{{$tag->color}}-600 text-white rounded-full">{{$tag->name}} </a>
                                    @endforeach
                                </div>
                                <hr class="mt-1 mb-2 ">
                               
                            </div>
                       
                                
                        </article>
                @endforeach

        </div>
        <br>
        <div class="mt-4">
            {{$posts->links()}}
        </div>
    </div>
   
</div>
    
       

</section>


</x-app-layout>