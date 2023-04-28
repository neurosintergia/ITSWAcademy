<?php

namespace App\Http\Controllers;
use App\Mail\contacto;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use PhpParser\Node\Expr\FuncCall;

class ContactoController extends Controller
{
    public function index(){
return view('contacto.index');
    }

    public function store(Request $request){
        return $request->all();
        $request->validate([
            'name' => 'required',
            'correo' => 'required',
            'telefono' => 'required'
        ]);

        $correo =new contacto($request->all());
    Mail::to('intelisoftw@gmail.com')->send($correo);
    return redirect()->route('contacto.index')->with('info','Mensaje enviado con éxito');
    }

    public function show(){
        return view('contacto.instructor');
    }

   

    public function proyecto(){
        return view('contacto.info');
    }
    public function politica(){
        return view('politicas.politicas');
    }
    public function terminos(){
        return view('politicas.terminos');
    }
   
}