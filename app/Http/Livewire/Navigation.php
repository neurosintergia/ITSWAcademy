<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Categori;
use App\Models\Categorii;


class Navigation extends Component
{
    public function render()
    {
 
        $categoris= Categori::all();
        $categoriis= Categorii::all();
        return view('livewire.navigation', compact('categoris','categoriis'));
    }
}
