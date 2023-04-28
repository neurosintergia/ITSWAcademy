<div>
    <x-slot name="header" >
      <div class="flex items-center ">
        <h2 class="text-3xl text-center font-semibold mb-8 ">
            Lista de Productos
        </h2>

        <x-button-enlace class="ml-auto" href="{{route('inventary.products.create')}}">
            Agregar producto
        </x-button-enlace>
      </div>
   
    </x-slot>


    <!-- This example requires Tailwind CSS v2.0+ -->

    <div class="container py-10">
    
        <x-table-responsive>

            <div class="px-6 py-4">
                <x-jet-input type="text" 
                wire:model="search"
                class="w-full"
                  placeholder="Ingrese el nombre del producto" />
            </div>

            @if ($products->count())
                
          
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead class="bg-gray-50">
                                 <tr>
                                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                    Nombre
                                    </th>
                                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                    Stock
                                    </th>
                                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                    Estado
                                    </th>
                                    <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                    Precio
                                    </th>
                                    <th scope="col" class="relative px-6 py-3">
                                    <span class="sr-only">Editar</span>
                                    </th>
                                </tr>
                            </thead>

                            <tbody class="bg-white divide-y divide-gray-200">
                            @foreach ($products as $product)
                                
                            
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap">
                                <div class="flex items-center">
                                    <div class="flex-shrink-0 h-10 w-10">
                                    @if ($product->images->count())
                                    <img class="h-10 w-10 rounded-full object-cover" 
                                    src="{{ Storage::url($product->images->first()->url) }}" alt="">
                                    @else
                                    <img class="h-10 w-10 rounded-full object-cover" 
                                    src="{{asset('img/home/7.jpg')}}" alt="">
                                    @endif
                                    </div>
                                    <div class="ml-4">
                                    <div class="text-sm font-medium text-gray-900">
                                        {{$product->name}}
                                    </div>
                                    <div class="text-sm text-gray-500">
                                        {{$product->subcategorii->categorii->name}}
                                       
                                    </div>
                                    </div>
                                </div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                <div class="text-sm text-gray-900"> {{$product->quantity}} </div>
        
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                @switch($product->status)
                                    @case(1)
                                    <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">
                                        Borrador
                                    </span>
                                        @break
                                    @case(2)
                                    <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                                        Publicado
                                    </span>
                                        @break
                                    @default
                                        
                                @endswitch
                                 
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
                                {{$product->price}} USD
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                                <a href="{{route('inventary.products.edit', $product)}}" class="text-indigo-600 hover:text-indigo-900">Editar</a>
                                </td>
                            </tr>
                            @endforeach 
                            <!-- More people... -->
                            </tbody>
                        </table>

          @else
                        <div class="card-body">
                            <strong>No hay registros</strong>
                        </div>
                        @endif
                       

                        @if ($products->hasPages())
                        
                        <div class="px-6 py-4">
                            {{$products->links()}}
                        </div>
                        
                        @endif
                       
        </x-table-responsive>

        
    </div>
</div>
