<?php

use App\Http\Controllers\Admin\CategoriiController;
use App\Http\Controllers\Admin\OrderController;
use Illuminate\Support\Facades\Route;

use App\Http\Livewire\Admin\ShowProducts;
use App\Http\Livewire\Admin\CreateProduct;
use App\Http\Livewire\Admin\EditProduct;

use App\Http\Controllers\Admin\ProductController;
use App\Http\Livewire\Admin\ShowCategorii;
use App\Http\Livewire\Admin\BrandComponent;


use App\Http\Livewire\Admin\ShowDepartment;
use App\Http\Livewire\Admin\CityComponent;
use App\Http\Livewire\Admin\UserComponent;
use App\Http\Livewire\Admin\DepartmentComponent;

//Rutas de categorias de productos

Route::get('/', ShowProducts::class)->name('index');

Route::get('products/create', CreateProduct::class)->name('products.create');

Route::get('products/{product}/edit', EditProduct::class)->name('products.edit');

Route::post('products/{product}/files',[ProductController::class, 'files'])->name('products.files');



Route::get('orders', [OrderController::class, 'index'])->name('orders.index');
Route::get('orders/{order}', [OrderController::class, 'show'])->name('orders.show');


Route::get('Categoriis', [CategoriiController::class, 'index'])->name('categoriis.index');

Route::get('Categoriis/{categorii}',ShowCategorii::class)->name('categoriis.show');

Route::get('brands', BrandComponent::class)->name('brands.index');


Route::get('estados',DepartmentComponent::class)->name('estados.index');

Route::get('estados/{department}', ShowDepartment::class)->name('estados.show');

Route::get('cities/{city}', CityComponent::class )->name('cities.show');

Route::get('users', UserComponent::class)->name('users.index');
