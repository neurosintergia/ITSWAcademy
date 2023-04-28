<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Course;
use App\Models\User;
use Illuminate\Http\Request;

class MatriculaController extends Controller
{

    public $courses;
    public function __construct()
    {
        $this->middleware('can:Leer usuarios')->only('index');        
        $this->middleware('can:Leer usuarios')->only('matri');        
         
    }

    public function matri(User $user)
    {
         $courses = $user->courses_enrolled()->orderBy('course_user.created_at', 'desc')->paginate(12);

        return view('admin.users.matri', compact('user','courses'));
    }

    public function index()
    {
        return view('admin.users.matriculas');
    }
}
