<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Level;


class LevelController extends Controller
{
 public function __construct()
    {
        $this->middleware('can:admin.levels.index')->only('index');    
        $this->middleware('can:admin.levels.create')->only('create', 'store');    
        $this->middleware('can:admin.levels.edit')->only('edit', 'update');     
        $this->middleware('can:admin.levels.destroy')->only('destroy'); 
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $levels = Level::all();
        return view('admin.levels.index', compact('levels'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.levels.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

    $request->validate([
        'name' => 'required|unique:levels'
    ]);

    $level =  Level::create($request->all());
    return redirect()->route('admin.levels.edit', $level)->with('info','El nivel se creo con éxito');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Level $level)
    {
        return view('admin.levels.show', compact('level'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Level $level)
    {
        return view('admin.levels.edit', compact('level'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Level $level)
    {
        
    $request->validate([
        'name' => 'required|unique:levels,name,' . $level->id
    ]);

    $level->update($request->all());
   
    return redirect()->route('admin.levels.index', $level)->with('info','El nivel se actualizo con éxito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Level $level)
    {
        $level->delete();
        return redirect()->route('admin.levels.index')->with('info','El nivel se elimino con éxito');
    }
}
