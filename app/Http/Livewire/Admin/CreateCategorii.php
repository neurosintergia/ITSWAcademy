<?php

namespace App\Http\Livewire\Admin;

use App\Models\Brand;
use App\Models\Categorii;
use Illuminate\Support\Facades\Storage;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;


class CreateCategorii extends Component
{
    use WithFileUploads;
    public $brands, $categoriis, $rand, $categorii;
    protected $listeners=['delete'];

    public $createForm = [
       
        'name' => null,
        'slug' => null,
        'icon' => null,
        'image' => null,
        'brands' => [],

    ];

    public $editForm = [
        'open' => false,
        'name' => null,
        'slug' => null,
        'icon' => null,
        'image' => null,
        'brands' => [],

    ];

    public $editImage;

    protected $rules = [
        'createForm.name' => 'required',
        'createForm.slug' => 'required|unique:categoriis,slug',
        'createForm.icon' => 'required',
        'createForm.image' => 'required|image|max:1024',
        'createForm.brands' => 'required',

    ];

    protected $validationAttributes = [
        'createForm.name' => 'nombre',
        'createForm.slug' => 'slug',
        'createForm.icon' => 'icono',
        'createForm.image' => 'imagen',
        'createForm.brands' => 'marcas',

        'editForm.name' => 'nombre',
        'editForm.slug' => 'slug',
        'editForm.icon' => 'icono',
        'editImage' => 'imagen',
        'editForm.brands' => 'marcas',
    ];
    public function mount(){
        $this->getBrands();
        $this->getCategoriis();
        $this->rand = rand();
    }

    public function updatedCreateFormName($value){
        $this->createForm['slug'] = Str::slug($value);
    }

    public function updatedEditFormName($value){
        $this->editForm['slug'] = Str::slug($value);
    }

    public function getBrands(){
        $this->brands = Brand::all();
    }

    public function getCategoriis(){
        $this->categoriis = Categorii::all();
    }


    public function save(){
       
        $this->validate();

        $image = $this->createForm['image']->store('categoriis');
   
       $categorii = Categorii::create([
            'name' => $this->createForm['name'],
            'slug' => $this->createForm['slug'],
            'icon' => $this->createForm['icon'],
            'image' => $image
        ]);

        $categorii->brands()->attach($this->createForm['brands']);
        $this->rand = rand();
        $this->reset('createForm');
        $this->getCategoriis();
        $this->emit('saved');

    }

    public function edit(Categorii $categorii){
        $this->reset(['editImage']);
        $this->resetValidation();
        
        $this->categorii = $categorii;



        $this->editForm['open'] = true;
        $this->editForm['name'] = $categorii->name;
        $this->editForm['slug'] = $categorii->slug;
        $this->editForm['icon'] = $categorii->icon;
        $this->editForm['image'] = $categorii->image;
        $this->editForm['brands'] = $categorii->brands->pluck('id');
    }



    public function update(){
        $rules = 
            [
                'editForm.name' => 'required',
                'editForm.slug' => 'required|unique:categoriis,slug,'. $this->categorii->id,
                'editForm.icon' => 'required',
                'editForm.brands' => 'required',
            ];

            if ($this->editImage) {
                $rules['editImage'] = 'image|max:1024';
            }
        
        $this->validate($rules);

        if ($this->editImage) {
            Storage::delete($this->editForm['image']);
            $this->editForm['image'] = $this->editImage->store('categoriis');
        }

        $this->categorii->update($this->editForm);

        $this->categorii->brands()->sync($this->editForm['brands']);
        
        $this->reset(['editForm', 'editImage']);
        
        $this->getCategoriis();
    }

    public function delete(Categorii $categorii){
        $categorii->delete();
        $this->getCategoriis();
    }
    public function render()
    {
        return view('livewire.admin.create-categorii');
    }
}
