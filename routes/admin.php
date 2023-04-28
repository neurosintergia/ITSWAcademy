<?php



use Illuminate\Support\Facades\Route;



use App\Http\Controllers\Admin\HomeController;

use App\Http\Controllers\Admin\CategoriController;



use App\Http\Controllers\Admin\TagController;

use App\Http\Controllers\Admin\PostController;

use App\Http\Controllers\Admin\UserController;

use App\Http\Controllers\Admin\RoleController;

use App\Http\Controllers\Admin\CourseController;

use App\Http\Controllers\Admin\CategoryController;

use App\Http\Controllers\Admin\LevelController;

use App\Http\Controllers\Admin\PriceController;
use App\Http\Controllers\Admin\MatricularController;
use App\Http\Controllers\Admin\MatriculaController;

Route::get('',[HomeController::class,'index'])->middleware('can:admin.home')->name('home');



Route::resource('users', UserController::class)->only(['index', 'edit', 'update'])->names('users');



Route::resource('roles', RoleController::class)->names('roles');



//Rutas de categorias de cursos

Route::resource('categories', CategoryController::class)->names('categories');



Route::resource('levels', LevelController::class)->names('levels');



Route::resource('prices', PriceController::class)->names('prices');



//Rutas de categorias de post



Route::resource('categoris', CategoriController::class)->except('show')->names('categoris');



Route::resource('tags', TagController::class)->except('show')->names('tags');



Route::resource('posts', PostController::class)->except('show')->names('posts');

Route::resource('matricular',MatricularController::class)->names('matricular');




Route::get('courses', [CourseController::class, 'index'])->name('courses.index');



Route::get('courses/{course}', [CourseController::class, 'show'])->name('courses.show');



Route::post('courses/{course}/approved', [CourseController::class, 'approved'])->name('courses.approved');



Route::get('courses/{course}/observation', [CourseController::class, 'observation'])->name('courses.observation');



Route::post('courses/{course}/reject', [CourseController::class, 'reject'])->name('courses.reject');



//nuevas lineas 

Route::get('matriculas', [MatriculaController::class, 'index'])->name('users.matriculas');

Route::get('ver/{user}', [MatriculaController::class, 'matri'])->name('users.matri');











