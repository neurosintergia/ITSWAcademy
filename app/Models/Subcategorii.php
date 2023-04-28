<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subcategorii extends Model
{
    use HasFactory;
    protected $guarded = ['id','created_at','updated_at'];


    //Relación uno a muchos 
    public function products(){
        return $this->hasMany(Product::class);
    }

     //Relación uno a muchos inversa 
     public function categorii(){
        return $this->belongsTo(Categorii::class);
    }

    //Relación muchos a muchos 
    public function brands(){
        return $this->belongsToMany(Brand::class);
    }
}
