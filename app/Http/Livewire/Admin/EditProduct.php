<?php

namespace App\Http\Livewire\Admin;

use App\Models\Brand;
use App\Models\Categorii;
use App\Models\Image;
use Livewire\Component;
use App\Models\Product;
use App\Models\Subcategorii;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class EditProduct extends Component
{
    public $product,$categoriis, $subcategoriis, $brands, $slug;
    public $categorii_id;


    protected $rules = [
        'categorii_id' => 'required',
        'product.subcategorii_id' => 'required',
        'product.name' => 'required',
        'slug' => 'required|unique:products,slug',
        'product.description' => 'required',
        'product.brand_id' => 'required',
        'product.price' => 'required',
        'product.quantity' => 'numeric',
        
    ];

    protected $listeners = ['refreshProduct','delete'];

    public function mount(Product $product){

        $this->product =  $product;

        $this->categoriis = Categorii::all();

        $this->categorii_id = $product->subcategorii->categorii->id;

        $this->subcategoriis = Subcategorii::where('categorii_id', $this->categorii_id)->get();

        $this->slug = $this->product->slug;

        $this->brands = Brand::whereHas('categoriis', function(Builder $query ){
            $query->where('categorii_id', $this->categorii_id);
        })->get();

    }

    
    public function refreshProduct(){
        $this->product = $this->product->fresh();
    }

    public function updatedProductName($value){
        $this->slug = Str::slug($value);

    }

    public function updatedCategoriiId($value){
        $this->subcategoriis = Subcategorii::where('categorii_id', $value)->get();

        $this->brands = Brand::whereHas('categoriis', function(Builder $query ) use ($value){
            $query->where('categorii_id', $value);
        })->get();

  

        $this->product->subcategorii_id = "";
        $this->product->brand_id = "";
    }



    public function getSubcategoriiProperty(){
        return Subcategorii::find($this->product->subcategorii_id);
    }

    public function save(){

   $rules = $this->rules;

    $rules['slug'] = 'required|unique:products,slug,' . $this->product->id;

    if ($this->product->subcategorii_id) {
        if (!$this->subcategorii->color && !$this->subcategorii->size ) {
            $rules['product.quantity'] = 'required|numeric';
        }
     }
   
  
  $this->validate($rules);

 $this->product->slug = $this->slug;

  $this->product->save();
  $this->emit('saved');
    }


    public function deleteImage(Image $image){
        Storage::delete([$image->url]);
        $image->delete();
        $this->product = $this->product->fresh();
    }

    public function delete(){
        $images= $this->product->images;
        foreach ($images as $image){
            Storage::delete($image->url);
            $image->delete();
           
        }
        $this->product->delete();
        return redirect()->route('inventary.index');
    }
    public function render()
    {
        return view('livewire.admin.edit-product')->layout('layouts.admin');
    }
}
