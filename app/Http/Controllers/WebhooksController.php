<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;

class WebhooksController extends Controller
{
    public function __invoke( Order $order, Request $request)
    {
     
        $this->authorize('author', $order);

    $payment_id =  $request->get('payment_id');
    $response = Http::get( "https://api.mercadopago.com/v1/payments/$payment_id" . "?access_token=APP_USR-2794521169646701-061002-064837a067c135dd2f71620a68a1c2b9-714712008" );
    $response = json_decode($response);

     $status = $response->status;

     if ($status == 'approved') {
        $order->status = 2;
        $order->save();
      
     }
     
     return redirect()->route('orders.show', $order);   
    }
}
