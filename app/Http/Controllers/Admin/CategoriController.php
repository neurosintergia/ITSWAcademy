<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Categori;
use Illuminate\Http\Request;

class CategoriController extends Controller
{

    public function __construct()
    {
        $this->middleware('can:admin.categoris.index')->only('index');    
        $this->middleware('can:admin.categoris.create')->only('create', 'store');    
        $this->middleware('can:admin.categoris.edit')->only('edit', 'update');     
        $this->middleware('can:admin.categoris.destroy')->only('destroy'); 
    }
 
    public function index()
    {
        $categoris = Categori::all();
        return view('admin.categoris.index', compact('categoris'));
    }

   
    public function create()
    {
        return view('admin.categoris.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'slug' => 'required|unique:categoris'
        ]);
      $categori =  Categori::create($request->all());
        return redirect()->route('admin.categoris.edit', $categori)->with('info', 'La categoria se creo con éxito');
    }

  
    public function edit(Categori $categori)
    {
        return view('admin.categoris.edit', compact('categori'));
    }

    public function update(Request $request, Categori $categori)
    {
        $request->validate([
            'name' => 'required',
            'slug' => "required|unique:categoris,slug,$categori->id"
        ]);

        $categori->update($request->all());
        return redirect()->route('admin.categoris.edit', $categori)->with('info', 'La categoria se actualizo con éxito');
    }

  
    public function destroy(Categori $categori)
    {
        $categori->delete();
        return redirect()->route('admin.categoris.index')->with('info', 'La categoria se elimino con éxito');
    }
}
