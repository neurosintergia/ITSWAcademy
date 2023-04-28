<?php

namespace App\Http\Livewire;

use Livewire\Component;

class CategoryProducts extends Component
{
    public $categorii;
    public $products = [];

    public function loadPosts(){
    $this->products = $this->categorii->products()->where('status',2)->take(15)->get();
    $this->emit('glider', $this->categorii->id);
    }

    public function render()
    {
        return view('livewire.category-products');
    }
}
