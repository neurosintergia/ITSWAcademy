<?php

namespace App\Http\Livewire;

use App\Models\Course;
use App\Models\Product;
use Livewire\Component;

class Search1 extends Component
{
    public $search1;

    //datos 
    public $search;

    public $open = false; 
    

    public function updatedSearch1($value){
            if ($value) {
                $this->open = true;
            }else{
                $this->open = false;
            }
    }

    public function render()
    {


        if ($this->search1) {
            $products = Product::where('name','LIKE', '%' . $this->search1 . '%')
            ->where('status',2)
            ->take(8)
            ->get();
        } else {
            $products = [];
        }
        

        

        return view('livewire.search1', compact('products'));
    }
    public function getResultsProperty(){
        return Course::where('title','LIKE', '%' . $this->search1 . '%')->where('status',3)->take(8)->get();
    } 
  
}
