<?php

namespace App\Listeners;

use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Auth\Events\Login;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class MergeTheCart
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  Login  $event
     * @return void
     */
    public function handle(Login $event)
    {
        $user = $event->user;

        //Definir la instancia del carrito
        Cart::instance('shopping');

        //Restaurar carrito de compras
        Cart::restore($user->id);

        //Obtenene el listado de cursos matriculados
        $course_enrolled = $event->user->courses_enrolled->pluck('id');

        //Obtener el listado de cursos dictados
        $courses_dictated = $event->user->courses_dictated->pluck('id');

        //Crear lista negra
        $black_list = $course_enrolled->merge($courses_dictated)->unique();

        //Eliminar del carrito los cursos de la lista negra
        foreach (Cart::content()->whereIn('id', $black_list ) as $item) {
            Cart::remove($item->rowId);
        }

        //Verificar si la cantidad agregada de cada item es 1
        foreach (Cart::content()->where('qty', '>', 1) as $item) {
            Cart::update($item->rowId, ['qty' => 1]);
        }

        //Verificar que no se haya items duplicados
        $duplicated_items = Cart::content()->groupBy('id')->filter(function($items){
            return $items->count() > 1;
        });

        foreach ($duplicated_items as $items) {
            Cart::remove($items->last()->rowId);
        }

        //Guardar carrito en la bbdd
        Cart::store($user->id);
    }
}
