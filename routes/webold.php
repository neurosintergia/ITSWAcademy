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
use App\Models\Order;
use GuzzleHttp\Middleware;

Route::get('/', HomeController::class)->name('home');

Route::get('cursos', [CourseController::class, 'index'])->name('courses.index');


Route::get('cursos/{course}', [CourseController::class, 'show'])->name('courses.show');


Route::post('courses/{course}/enrolled', [CourseController::class, 'enrolled'])->middleware('auth')->name('courses.enrolled');


Route::get('course-status/{course}', CourseStatus::class)->name('courses.status')->middleware('auth');


Route::get('posts', [PostController::class, 'index'])->name('posts.index');


Route::get('posts/{post}', [PostController::class, 'show'])->name('posts.show');


Route::get('categori/{categori}', [PostController::class, 'categori'])->name('posts.categori');


Route::get('tag/{tag}', [PostController::class, 'tag'])->name('posts.tag');

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

//correos de contacto 

Route::get('contacto', [ContactoController::class, 'index'])->name('contacto.index');

Route::get('enseñar', [ContactoController::class, 'show'])->name('enseñar.show');

Route::post('contacto', [ContactoController::class, 'store'])->name('contacto.store');


Route::get('acerca', [ContactoController::class, 'acerca'])->name('acerca');

Route::get('escuelalsm', [ContactoController::class, 'escuelalsm'])->name('escuelalsm.escuelalsm');

//productos 

Route::get('categoriis/{categorii}', [CategoriiController::class, 'show'])->name('categoriis.show');

Route::get('products/{product}', [ProductController::class, 'show'])->name('products.show');

Route::get('search', SearchController::class)->name('search');

Route::get('shopping-cart', ShoppingCart::class)->name('shopping-cart');

Route::middleware(['auth'])->group(function () {

    Route::get('orders', [OrderController::class, 'index'])->name('orders.index');

    Route::get('orders/create', CreateOrder::class)->name('orders.create');

    Route::get('orders/{order}', [OrderController::class, 'show'])->name('orders.show');

    Route::get('orders/{order}/payment', PaymentOrder::class)->name('orders.payment');

    Route::get('orders/{order}/pay', [OrderController::class, 'pay'])->name('orders.pay');

    Route::post('webhooks', WebhooksController::class);

    Route::get('neurosintergia', [PodcastController::class, 'show'])->name('podcast.show');
});
