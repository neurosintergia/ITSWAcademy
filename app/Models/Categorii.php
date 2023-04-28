<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categorii extends Model
{

    protected $fillable = ['name' , 'slug','image' , 'icon'];
    use HasFactory;

    
    public function getRouteKeyName()
    {
        return "slug";
    }

    
//Relación uno a muchos 
    public function subcategoriis(){
        return $this->hasMany(Subcategorii::class);
    }

    //Relación muchos a muchos 
    public function brands(){
        return $this->belongsToMany(Brand::class);
    }

    public function products(){
        return $this->hasManyThrough(Product::class, Subcategorii::class);
    }
}
