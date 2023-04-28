<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Livewire\WithPagination;
use App\Models\Product;
use Illuminate\Database\Eloquent\Builder;

class CategoriiFilter extends Component
{ 
    use WithPagination;

    public $categorii, $subcategoria, $marca;

    public $view = "grid";
    
    protected $queryString = ['subcategoria', 'marca'];

    public function limpiar(){
        $this->reset(['subcategoria', 'marca', 'page']);
    }

    public function updatedSubcategoria(){
        $this->resetPage();
    }

    public function updatedMarca(){
        $this->resetPage();
    }


    public function render()
    {
       /* $products = $this->categorii->products()
                       ->where('status', 2)->paginate(12); */

        $productsQuery = Product::query()->whereHas('subcategorii.categorii', function(Builder $query){
                $query->where('id', $this->categorii->id);
        });

        if ($this->subcategoria){
            $productsQuery =  $productsQuery->whereHas('subcategorii',function(Builder $query){
                $query->where('slug', $this->subcategoria);
            });
        }

        if ($this->marca) {
            $productsQuery =  $productsQuery->whereHas('brand',function(Builder $query){
                $query->where('name', $this->marca);
            });
        }
        $products = $productsQuery->paginate(12);
        return view('livewire.categorii-filter', compact('products'));
    }
}
