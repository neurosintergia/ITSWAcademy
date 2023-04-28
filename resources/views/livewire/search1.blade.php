<div class="flex-1 relative" x-data>
  
<form action="{{route('search')}}" autocomplete="off">
    <x-jet-input name="name" wire:model="search1" type="text" class="w-full " placeholder="Buscar..." />
    <button class="absolute top-0 right-0 w-11 h-11 bg-blue-500 flex items-center justify-center rounded-r-md">
        <x-search size="30" color="white"/>
    </button>
</form>
    <div class="absolute w-full hidden" :class="{ 'hidden' : !$wire.open }" @click.away="$wire.open = false">
               <div class="bg-white rounded-lg shadow-md mt-1" >
                    <div class="px-4 py-3 space-y-1">
                            @forelse ($products as $product)
                               
                            <a  href="{{route('products.show', $product)}}" class="flex">
                                    <img class="w-16 h-12 object-cover" src="{{Storage::url($product->images->first()->url)}}">
                                    <div class="ml-4 text-gray-700">

                                        <p class="text-lg font-semibold leading-5">{{$product->name}}</p>
                                        <p> Categoría: {{$product->subcategorii->categorii->name}}</p>
                                    </div>
                                </a>
                            
                                @empty
                                
                                <p class="text-lg leading-5"> No hay ninguna coincidencia...</p>
                                
                            @endforelse

                            <!--  datos -->

                                @forelse ($this->results as $result)

                                <a  href="{{ route('courses.show',$result)}}" class="flex">

                                    <img class="w-16 h-12 object-cover" src="{{Storage::url($result->image->url)}}">
                                    <div class="ml-4 text-gray-700">

                                        <p class="text-lg font-semibold leading-5">{{ $result->title}}</p>
                                        <p> Categoría: {{$result->category->name}}</p>
                                    </div>
                                
                                </a>


                                @empty
                               
                               {{-- <p> Categoría: {{$product->subcategorii->categorii->name}}</p> --}}
                                @endforelse

                            
                    </div>
               </div>
    </div>
</div>
