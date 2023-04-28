<?php

namespace App\Http\Livewire\Admin;

use App\Models\Categorii;
use App\Models\Subcategorii;
use Livewire\Component;
use Illuminate\Support\Str;

class ShowCategorii extends Component
{
    public $categorii, $subcategoriis, $subcategorii;

    protected $listeners=['delete'];

    protected $rules = [
        'createForm.name' => 'required',
        'createForm.slug' => 'required|unique:subcategoriis,slug',
        'createForm.color' => 'required',
        'createForm.size' => 'required',

    ];


    protected $validationAttributes = [
        'createForm.name' => 'nombre',
        'createForm.slug' => 'slug',
        'createForm.color' => 'color',
        'createForm.size' => 'talla',
        'editForm.name' => 'nombre',
        'editForm.slug' => 'slug',
        'editForm.color' => 'color',
        'editForm.size' => 'talla',

    ];

    public $createForm = [
       
        'name' => null,
        'slug' => null,
        'color' => false,
        'size' => false
       

    ];


    
    public $editForm = [
       'open' => false,
        'name' => null,
        'slug' => null,
        'color' => false,
        'size' => false
       

    ];


    public function mount(Categorii $categorii){
        $this->categorii = $categorii;
        $this->getSubcategoriis();
    }

    
    public function updatedCreateFormName($value){
        $this->createForm['slug'] = Str::slug($value);
    }

    public function getSubcategoriis(){
        $this->subcategoriis = Subcategorii::where('categorii_id', $this->categorii->id)->get();
    }


    public function updatedEditFormName($value){
        $this->editForm['slug'] = Str::slug($value);
    }

  
  
    public function save(){
        $this->validate();
        $this->categorii->subcategoriis()->create($this->createForm);
 
     $this->reset('createForm');
     $this->getSubcategoriis();
 
 
     }

    public function edit( Subcategorii $subcategorii){


        $this->resetValidation();

        $this->subcategorii = $subcategorii;

        $this->editForm['open'] = true;

        $this->editForm['name'] = $subcategorii->name;
        $this->editForm['slug'] = $subcategorii->slug;
        $this->editForm['color'] = $subcategorii->color;
        $this->editForm['size'] = $subcategorii->size;
    }

  

    public function update(){
        $this->validate([
            'editForm.name' => 'required',
            'editForm.slug' => 'required|unique:subcategoriis,slug,'. $this->subcategorii->id,
            'editForm.color' => 'required',
            'editForm.size' => 'required',
        ]);

        $this->subcategorii->update($this->editForm);

        $this->getSubcategoriis();
        $this->reset('editForm');

    }

    public function delete( Subcategorii $subcategorii){
        $subcategorii->delete();
        $this->getSubcategoriis();
    }
    public function render()
    {
        return view('livewire.admin.show-categorii')->layout('layouts.admin');
    }
}
