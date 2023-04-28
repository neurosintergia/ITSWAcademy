<?php

namespace App\Http\Controllers;

use App\Models\Categorii;
use Illuminate\Http\Request;

class CategoriiController extends Controller
{
    public function show(Categorii $categorii)
    {
        return view('categoriis.show', compact('categorii'));
    }

}
