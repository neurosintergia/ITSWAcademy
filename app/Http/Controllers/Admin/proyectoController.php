<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\proyecto;
use Illuminate\Http\Request;

class proyectoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('can:Leer usuarios')->only('index','create');        
        $this->middleware('can:Editar usuarios')->only('edit', 'update','destroy');   

     
    }



    public function index()
    {
        $proyectos = proyecto::all();
        return view('proyectos.index', compact('proyectos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('proyectos.create');
      
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
            'name' => 'required',
            'folio' => 'required',
            'contacto' => 'required',
            'mensaje' => 'required'
        ]);
        
        $proyecto = proyecto::create($request->all());
        
        return redirect()->route('proyecto.info')->with('info', '!Proyecto enviado¡');
       
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show( Proyecto $proyecto)
    {
        return view('proyectos.show', compact('proyecto'));
       
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Proyecto $proyecto)
    {
        return view('proyectos.edit', compact('proyecto'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,Proyecto $proyecto)
    {
   
        $request->validate([
            'name' => 'required',
            'folio' => 'required',
            'contacto' => 'required',
            'mensaje' => 'required'
        ]);

        $proyecto->update($request->all());

        return redirect()->route('proyecto.edit', $proyecto)->with('info', 'Proyecto actualizado ');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Proyecto $proyecto)
    {
        $proyecto->delete();
        return redirect()->route('proyecto.index')->with('info', 'El proyecto se eliminó con éxito');
    }
}
