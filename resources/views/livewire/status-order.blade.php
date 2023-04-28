
    <div  class="max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 py-12">

        <div class="bg-white rounded-lg shadow-lg px-12 py-8 mb-6 flex items-center">

            <div class="relative">
                <div class=" {{($order->status >= 2 && $order->status != 5) ? 'bg-blue-400' : 'bg-gray-400'}}  rounded-full h-12 w-12  flex items-center justify-center">
                    <i class="fas fa-check text-white"></i>
                </div>
                <div class="absolute -left-1.5 m-0.5">
                    <p>Recibido</p>
                </div>

            </div>

            <div class="h-1 flex-1  {{($order->status >= 3 && $order->status != 5) ? 'bg-blue-400' : 'bg-gray-400'}}   mx-2 ">

            </div>

            <div class="relative">
                <div class=" {{($order->status >= 3 && $order->status != 5) ? 'bg-blue-400' : 'bg-gray-400'}} rounded-full h-12 w-12  flex items-center justify-center">
                    <i class="fas fa-truck text-white"></i>
                </div>
                <div class="absolute -left-1 m-0.5">
                    <p>Enviado</p>
                </div>
            </div>

            <div class="h-1 flex-1  {{($order->status >= 4 && $order->status != 5) ? 'bg-blue-400' : 'bg-gray-400'}}   mx-2 ">
            </div>

            <div class="relative">
                <div class="  {{($order->status >= 4 && $order->status != 5) ? 'bg-blue-400' : 'bg-gray-400'}}  rounded-full h-12 w-12 flex items-center justify-center">
                    <i class="fas fa-check text-white"></i>
                </div>
                <div class="absolute -left-2 m-0.5">
                    <p>Entregado</p>
                </div>
            </div>

        </div>

        <div class="bg-white rounded-lg shadow-lg px-6 py-4 mb-6">
                <p class="text-gray-700 uppercase"> <span class="font-semibold">Numero de orden:</span>
                     Orden-{{$order->id}}
                    </p>

             <form wire:submit.prevent="update">
                 <div class="flex space-x-3 mt-2">
                        <x-jet-label>
                            <input wire:model="status" type="radio" name="status" value="2" class="mr-2">
                            Recibido
                        </x-jet-label>
                        <x-jet-label>
                            <input wire:model="status" type="radio" name="status" value="3" class="mr-2">
                            Enviado
                        </x-jet-label>
                        <x-jet-label>
                            <input wire:model="status" type="radio" name="status" value="4" class="mr-2">
                            Entregado
                        </x-jet-label>
                        <x-jet-label>
                            <input wire:model="status" type="radio" name="status" value="5" class="mr-2">
                            Anulado
                        </x-jet-label>

                 </div>

                 <div class="flex mt-2">
                     <x-jet-button class="ml-auto">
                         Actualizar
                     </x-jet-button>

                 </div>

             </form>
        </div>


        <div class="bg-white rounded-lg shadow-lg p-6 mb-6 ">
            <div class="grid grid-cols-2 gap-6 text-gray-700">
                    <div>
                            <p class="text-lg font-semibold uppercase">Envio</p>
                            @if ($order->envio_type == 1)
                            <p class="text-sm">Los productos pueden ser recorridos en local</p>
                            <p class="text-sm"> <strong> Bodas de Figaro 55, Tlahuác</strong> </p>
                                
                            @else
                            <p class="text-sm">Los productos seran enviado a:</p>
                            <strong>
                            <p class="text-sm">  {{$envio->address}}</p>
                            <p> {{$envio->district}},  {{$envio->city}}, {{$envio->department}}.</p>
                        </strong>
                            @endif
                    </div>
        
                    <div>
                        <p class="text-lg font-semibold uppercase">Datos de contacto</p>
                        <p class="text-sm">Persona que recibirá el producto: <strong>{{$order->contact}} </strong> </p>
                        <p class="text-sm">Telefono de contacto: <strong> {{$order->phone}}</strong> </p>
                    </div>
            </div>
        </div>

        <div class="bg-white rounded-lg shadow-lg p-6 text-gray-700 mb-6" >
                <p class="text-xl font-semibold mb-4">Resumen</p>
                <table class="table-auto w-full">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th>Cantidad</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-200">
                            @foreach ($items as $item)
                            <tr>
                                <td>
                                    <div class="flex">
                                            <img 
                                            class="h-15 w-20 object-cover mr-4"
                                            src="{{$item->options->image}}" alt="">
                                            <article>
                                                <h1 class="font-bold">{{$item->name}}</h1>
                                               
                                                <div class="flex text-xs">
                                                
                                                    @isset ($item->options->color)
                                                        color: {{__($item->options->color)}}
                                                    @endisset

                                                    @isset ($item->options->size)
                                                        - {{$item->options->size}}
                                                    @endisset

                                                </div>
                                            </article>
                                    </div>
                                </td>
                                <td class="text-center">
                                        {{$item->price}} USD
                                </td>
                                <td class="text-center">
                                    {{$item->qty}}
                                </td>
                                <td class="text-center">
                                    {{$item->price * $item->qty}} USD

                                </td>
                            </tr>
                            @endforeach
                    </tbody>
                </table>
        </div>

       @if ($order->status == 5)
       <a href="https://api.whatsapp.com/send?phone=529612206477" class=" items-center cursor-pointer hover:bg-green-400 inline-flex  justify-center w-full px-6 py-3 mb-2 text-lg text-white bg-green-700 rounded-2xl sm:w-auto sm:mb-0">
          WhatsApp
       </a>
      <p>Escribenos para mas información</p>
       @endif
</div>

