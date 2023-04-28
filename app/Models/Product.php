<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use PhpParser\Node\Expr\FuncCall;

class Product extends Model
{
    protected $guarded = ['id', 'created_at', 'updated_at'];
    use HasFactory;
    const BORRADOR = 1;
    const PUBLICADO = 2;

    public function getRouteKeyName()
    {
        return "slug";
    }

    //accesores 

    public function getStockAttribute()
    {
        if ($this->subcategorii->size) {
            return ColorSize::whereHas('size.product', function (Builder $query) {
                $query->where('id', $this->id);
            })->sum('quantity');
        } elseif ($this->subcategorii->color) {
            return ColorProduct::whereHas('product', function(Builder $query){
                $query->where('id', $this->id);
            })->sum('quantity');
        } else {
            return $this->quantity;
        }
    }
    //Relación uno a muchos 

    public function sizes()
    {
        return $this->hasMany(Size::class);
    }
    //Relación uno a muchos inversa

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }


    public function subcategorii()
    {
        return $this->belongsTo(Subcategorii::class);
    }
    //Relación muchos a muchos 
    public function colors()
    {
        return $this->belongsToMany(Color::class)->withPivot('quantity','id');
    }
    //Relación uno a muchos  polimorfica
    public function images()
    {
        return $this->morphMany(Image::class, "imageable");
    }
}
