<?php

namespace App\Http\Livewire\Admin;

use App\Models\Brand;
use App\Models\Categorii;
use App\Models\Product;
use App\Models\Subcategorii;
use Illuminate\Database\Eloquent\Builder;
use Livewire\Component;
use Illuminate\Support\Str;

class CreateProduct extends Component
{
    public $categoriis, $subcategoriis=[], $brands = [];

    public $categorii_id="",$subcategorii_id="", $brand_id="";

    public $name, $slug,$description, $price, $quantity;

    protected $rules = [
        'categorii_id' => 'required',
        'subcategorii_id' => 'required',
        'name' => 'required',
        'slug' => 'required|unique:products',
        'description' => 'required',
        'brand_id' => 'required',
        'price' => 'required',
        
    ];

    public function updatedCategoriiId($value){
        $this->subcategoriis = Subcategorii::where('categorii_id', $value)->get();

        $this->brands = Brand::whereHas('categoriis', function(Builder $query ) use ($value){
            $query->where('categorii_id', $value);
        })->get();

        $this->reset(['subcategorii_id','brand_id']);
    }

    public function updatedName($value){
        $this->slug = Str::slug($value);

    }

    public function getSubcategoriiProperty(){
            return Subcategorii::find($this->subcategorii_id);
    }


    public function mount(){
        $this->categoriis = Categorii::all();
    }

    public function save(){

        $rules = $this->rules;

        if ($this->subcategorii_id) {
           if (!$this->subcategorii->color && !$this->subcategorii->size ) {
               $rules['quantity'] = 'required';
           }
        }

        $this->validate($rules);

        $product = new Product();

        $product->name = $this->name;
        $product->slug = $this->slug;
        $product->description = $this->description;
        $product->subcategorii_id = $this->subcategorii_id;
        $product->brand_id = $this->brand_id;
        $product->price = $this->price;
        if ($this->subcategorii_id) {
            if (!$this->subcategorii->color && !$this->subcategorii->size ) {
                $product->quantity = $this->quantity;
            }
         }

         $product->save();
         return redirect()->route('inventary.products.edit', $product);
    }

    public function render()
    {
        return view('livewire.admin.create-product')->layout('layouts.admin');
    }
}
