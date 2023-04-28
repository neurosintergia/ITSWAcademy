<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Course;
use App\Models\Post;
use App\Models\Categorii;
use App\Models\Order;

class HomeController extends Controller
{
    public function __invoke()
    {
        if (auth()->user()) {
            $pendiente = Order::where('status',1 )->where('user_id', auth()->user()->id)->count();
            if ($pendiente) {
                $mensaje = "Ustede tiene $pendiente ordenes pendientes <a class='font-bold' href='" . route('orders.index') . "?status=1'> Proceder con el pago </a> ";
                session()->flash('flash.banner',$mensaje);
            }
        }


        $courses = Course::where('status', '3')->latest('id')->get()->take(8);
        $posts = Post::where('status', 2)->latest('id')->paginate(5);
        $categoriis = Categorii::all();
        return view('welcome', compact('courses','posts','categoriis'));

    }
    
   
    public function proyectos(){
        return view('contacto.info');
    }


    public function acerca(){
        return view('contacto.acerca');
    }
    
    public function servicios(){
        return view('contacto.servicios');
    } 
    
  
    

}