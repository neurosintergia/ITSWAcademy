<x-app-layout>
    <div class="container py-1">
       
     

        <div class="grid grid-cols-1 lg:grid-cols-2 gap-4 md:gap-6">


            <div>
                     <div class="flexslider">
                      <ul class="slides">
                                @foreach ($product->images as $image)
                                    <li data-thumb="{{ Storage::url($image->url)}}">
                                          <img src="{{ Storage::url($image->url)}}"/>
                                     </li>
                                @endforeach
                      </ul>
                    </div>

                    <div  class="-mt-10 text-gray-700">
                        <h2 class=" font-bold text-lg"> Descripción</h2>
                        <p class="text-2xl font-semibold text-trueGray-700" >{!!$product->description!!}</p>
                    </div>

            </div>
            <div class="py-8">
                    <h1 class="text-xl font-bold text-trueGray-700">{{$product->name}}</h1>
                    <div class="flex">
                        <p class="text-trueGray-700">Marca: <a class="hover:text-blue-500 capitalize underline" href="">{{$product->brand->name}}</a></p>
                        <p class="text-trueGray-700 mx-6"><i class="fas fa-star text-sm text-yellow-400" ></i></p>
                      {{--  <a class="text-blue-500 hover:text-blue-700 underline" href="">39 reseñas</a> --}}
                    </div>
                    <p class="text-2xl font-semibold text-trueGray-700 my-4" >USD $ {{$product->price}} </p>
                    <div class="bg-white rounded-lg shadow-lg mb-6">
                            <div class="p-4 flex items-center">
                                <span class="flex items-center justify-center h-10 w-10 rounded-full bg-blue-500">
                                    <i class="fas fa-truck text-sm text-white"></i>
                                </span>
                                <div  class="ml-4 ">
                                    <p class="text-lg font-semibold text-blue-700">Envios en Ciudad de México y Villaflores, Chiapas </p>
                                    <p>Llega el {{Date::now()->addDay(7)->locale('es')->format('l j F')}} </p>
                                </div>

                            </div>
                    </div>

                    @if ($product->subcategorii->size)
                        @livewire('add-cart-item-size', ['product' => $product])
                    @elseif($product->subcategorii->color)
                        @livewire('add-cart-item-color', ['product' => $product])
                    @else
                        @livewire('add-cart-item', ['product' => $product])
                    @endif
                    <div  class="mt-8 text-gray-700">
                        <h2 class=" font-bold text-lg"> Descripción</h2>
                        <p class="text-2xl font-semibold text-trueGray-700" >{!!$product->description!!}</p>
                    </div>

            </div>

            
        </div>

    </div>

    @push('script')
        <script>
        $(document).ready(function() {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
        });
    </script>
    @endpush

</x-app-layout>