<div>
     
    @php
              
        
     
        require base_path('vendor/autoload.php');

        MercadoPago\SDK::setAccessToken(config('services.mercadopago.token'));

        $preference = new MercadoPago\Preference();

        $shipments = new MercadoPago\Shipments();
        $shipments->cost = $order->shipping_cost;
        $shipments->mode= "not_specified";

        $preference->shipments = $shipments;

        foreach ($items as $product) {
            $item = new MercadoPago\Item();
            $item->title = $product->name;
            $item->quantity = $product->qty;
            $item->unit_price = $product->price;

            $products[] = $item;
        }

        $preference->back_urls = array(
        "success" => route('orders.pay', $order),
        "pending" => "https://itswacademy.com/"
        );
        $preference->auto_return = "approved";
       
        $preference->items = $products;
        $preference->save();
    
    @endphp
        
    <div class="container py-8 grid grid-cols-2 lg:grid-cols-5 gap-6">


        <div  class="col-span-3">

                <div class="bg-white rounded-lg shadow-lg px-6 py-4 mb-6">
                        <p class="text-gray-700 uppercase"> <span class="font-semibold">Numero de orden:</span> ITSW-{{$order->id}}</p>
                </div>


                <div class="bg-white rounded-lg shadow-lg p-6 mb-6 ">
                    <div class="grid grid-cols-2 gap-6 text-gray-700">
                            <div>
                                    <p class="text-lg font-semibold uppercase">Envio</p>
                                    @if ($order->envio_type == 1)
                                    <p class="text-sm">Los productos pueden ser recorridos en local</p>
                                    <p class="text-sm">  Bodas de Figaro 55, Tlahuác</p>
                                        
                                    @else
                                    <p class="text-sm">Los productos seran enviado a:</p>
                                    <p class="text-sm">  {{$envio->address}}</p>
                                    <p>{{$envio->department}} -  {{$envio->city}} - {{$envio->district}}</p>
                                    @endif
                            </div>
                
                            <div>
                                <p class="text-lg font-semibold uppercase">Datos de contacto</p>
                                <p class="text-sm">Persona que recibirá el producto: {{$order->contact}} </p>
                                <p class="text-sm">Telefono de contacto: {{$order->phone}} </p>
                            </div>
                    </div>
                </div>

                <div class="bg-white rounded-lg shadow-lg p-6 text-gray-700 mb-6" >
                        <p class="text-xl font-semibold mb-4">Resumen</p>
                        <table class="table-auto w-full">
                            <thead>
                                <tr>
                                    <th></th>
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

               
        </div>

        <div class=" col-span-2">
            <div class="bg-white rounded-lg shadow-lg px-6 pt-6 ">

                <div class="flex justify-between items-center mb-6">
                    <img class="h-8" src="{{asset('img\1.png')}}" alt="">
                    <div class="text-gray-700 ">
                        <p class="text-sm font-semibold"> 
                            
                            Subtotal: {{$order->total - $order->shipping_cost}} USD
                        </p>
                        <p class="text-sm font-semibold"> 
                            
                            Envio: {{$order->shipping_cost}} USD
                        </p>
                        <p class="text-lg font-semibold uppercase"> 
                            Total: {{$order->total}} USD
                        </p>

                  
                            <div  class="cho-container"> 
                      
                            </div>
                      

                    </div>
                </div>

                
                <div id="paypal-button-container"></div>


            </div>

            <div class=" bg-white rounded-lg shadow-lg px-6  p-4 mt-4">
              <div class="text-center">
                <h2>Depositos en OXXO</h2>  
                <p><strong>Cuenta Santander</strong></p>
           
                <p><strong>5579 0900 4180 2894</strong></p>

                <x-button-enlace class="mt-4" href="https://api.whatsapp.com/send?phone=529612206477" > 
                    Enviar Comprobante
                </x-button-enlace>
              </div>
            </div>
        </div>

    </div>
    <script src="https://sdk.mercadopago.com/js/v2"></script>

    <script>
        // Agrega credenciales de SDK
          const mp = new MercadoPago("{{config('services.mercadopago.key')}}", {
                locale: 'es-AR'
          });
        
          // Inicializa el checkout
          mp.checkout({
              preference: {
                  id: '{{   $preference->id }}'
              },
              render: {
                    container: '.cho-container', // Indica dónde se mostrará el botón de pago
                    label: 'Mercado pago', // Cambia el texto del botón de pago (opcional)
              }
           });
        </script>

@push('script')
    
<script src="https://www.paypal.com/sdk/js?client-id={{config('services.paypal.client_id')}}"> // Replace YOUR_CLIENT_ID with your sandbox client ID
</script>


<script>
   paypal.Buttons({
     createOrder: function(data, actions) {
       return actions.order.create({
         purchase_units: [{
           amount: {
             value: "{{ $order->total }}"
           }
         }]
       });
     },
     onApprove: function(data, actions) {
       return actions.order.capture().then(function(details) {
       
        Livewire.emit('payOrder');
//         alert('Transaction completed by ' + details.payer.name.given_name);


       });
     }
   }).render('#paypal-button-container'); // Display payment options on your web page
 </script>
@endpush
    
</div>
