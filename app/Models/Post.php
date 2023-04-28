<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;
    protected $guarded = ['id', 'created_at','updated_at'];

   public function getRouteKeyName()
        {
            return 'slug';
        }
//relacion uno a muchos inversa


    public function users(){
        return $this->belongsTo(User::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }

    public function categori(){
        return $this->belongsTo(Categori::class);
    }
//relacion muchos a mucho 

public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }

    //relacion uno a uno polimorfica 

    public function image(){
        return $this->morphOne(Image::class, 'imageable');
    }


     public function questions(){
        return $this->morphMany(Question::class,'questionable');
    }

    public function scopeFilter($query, $filters)
    {
        $query->when($filters['category'] ?? null,function($query,$category){
            $query->whereIn('categori_id', $category);
        })->when($filters['order'] ?? 'new', function($query, $order){
            $sort = $order == 'new' ? 'desc' : 'asc';
            $query->orderBy('created_at', $sort);
        });
    }
    

}
