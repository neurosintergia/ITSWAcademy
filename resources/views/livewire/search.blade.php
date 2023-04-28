<form class="relative text-gray-600   w-3/4" autocomplete="off">
    <input wire:model="search" type="search" name="search" placeholder="Ingresa nombre del curso" class="w-full bg-white h-10 px-5 pr-10 rounded-full text-sm focus:outline-none">

    {{-- <button  type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded absolute right-0 top-0 mt-0">
        Buscar
    </button> --}}
@if($search)
    <ul class="absolute z-50 left-0 w-full bg-white mt-1 rounded-lg overflow-hidden">
       @forelse ($this->results as $result)

            <li class="leading-10 px-5 text-sm cursor-pointer hover:bg-blue-300 "> 

                <a href="{{ route('courses.show',$result)}}" class="flex">

                   <img class="w-16 h-12 object-cover" src="{{Storage::url($result->image->url)}}" >
                    
                    
             
                <div class="ml-4 text-gray-700">
                 
                    <p class="text-lg text-blue-900 font-semibold leading-5">{{ $result->title}}</p>
                    {{-- <p> Categoría: {{$result->category->name}}</p> --}}
                </div>


            </a>


            </li>
            <hr class="m-2 border-gray-200">
            @empty
                 <li class="leading-10 px-5 text-sm cursor-pointer hover:bg-blue-300 "> 
              No hay ninguna coincidencia...
                </li>
       @endforelse
    </ul>
@endif

    
</form>