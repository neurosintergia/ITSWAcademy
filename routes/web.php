<?php

use App\Http\Controllers\CategoriiController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CourseController;
use App\Http\Livewire\CourseStatus;
use App\Http\Controllers\ContactoController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SearchController;
use App\Http\Livewire\ShoppingCart;
use App\Http\Livewire\CreateOrder;
use App\Http\Livewire\PaymentOrder;
use App\Http\Controllers\Admin\proyectoController;
use App\Http\Controllers\PodcastController;

use App\Http\Controllers\WebhooksController;
use App\Http\Livewire\ShoppingCartPayment;
use App\Models\Order;
use GuzzleHttp\Middleware;

Route::get('/', HomeController::class)->name('home');

Route::get('proyectos', [HomeController::class, 'proyectos'])->name('proyectos');

Route::get('acerca', [HomeController::class, 'acerca'])->name('acerca.index');

Route::get('servicios', [HomeController::class, 'servicios'])->name('servicios.index');

Route::get('cursos', [CourseController::class, 'index'])->name('courses.index');


Route::get('cursos/my-courses', [CourseController::class, 'myCourses'])
    ->middleware('auth')
    ->name('courses.my-courses');

Route::get('Cursos/{course}', [CourseController::class,'show'])->name('courses.show');

Route::post('courses/{course}/enrolled', [CourseController::class, 'enrolled'])->middleware('auth')->name('courses.enrolled');


Route::get('course-status/{course}', CourseStatus::class)->name('courses.status')->middleware('auth');


Route::get('posts', [PostController::class, 'index'])->name('posts.index');


Route::get('posts/{post}', [PostController::class, 'show'])->name('posts.show');


Route::get('categori/{categori}', [PostController::class, 'categori'])->name('posts.categori');


Route::get('tag/{tag}',[PostController::class, 'tag'])->name('posts.tag');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard'); 

//correos de contacto 

Route::get('contacto',[ContactoController::class, 'index'])->name('contacto.index');



Route::post('contacto',[ContactoController::class, 'store'])->name('contacto.store');

Route::get('proyectos',[ContactoController::class, 'proyecto'])->name('proyecto.info');

Route::get('participar',[ContactoController::class, 'show'])->name('participar.show');

Route::get('politicas-y-privacidad',[ContactoController::class, 'politica'])->name('politica');
Route::get('terminos-y-condiciones',[ContactoController::class, 'terminos'])->name('terminos');

//productos 

Route::get('categoriis/{categorii}', [CategoriiController::class, 'show'])->name('categoriis.show');

Route::get('products/{product}',[ProductController::class, 'show'])->name('products.show');

Route::get('search', SearchController::class)->name('search');



//Carrito de compras
Route::get('shopping-cart', ShoppingCart::class)
    ->name('shopping-cart');

Route::get('shopping-cart/checkout', ShoppingCartPayment::class)
    ->middleware('auth', 'items_in_the_shopping_cart')
    ->name('shopping-cart.checkout');

Route::middleware(['auth'])->group(function(){

Route::get('orders',[OrderController::class, 'index'])->name('orders.index');

Route::get('orders/create', CreateOrder::class)->name('orders.create');

Route::get('orders/{order}', [OrderController::class, 'show'])->name('orders.show');

Route::get('orders/{order}/payment', PaymentOrder::class)->name('orders.payment');

Route::get('orders/{order}/pay', [OrderController::class, 'pay'])->name('orders.pay');

Route::post('webhooks', WebhooksController::class);

Route::get('neurosintergia', [PodcastController::class,'show'])->name('podcast.show');

});

Route::resource('proyecto', ProyectoController::class)->names('proyecto');
Route::get('podcast', [PodcastController::class,'index'])->name('podcast.index');