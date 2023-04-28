<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Podcast;

class PodcastController extends Controller
{
    public function index(){
        return view('podcast.index');
    }

    public function show(){
  
        /*   $podcast = Podcast::all();

           $data = ['success'=>true,'podcast'=>$podcast];
   
       return response()->json($data,200,[]); */

       return view('podcast.ns');
    }
}
