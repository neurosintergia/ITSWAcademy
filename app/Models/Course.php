<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    protected $guarded = ['id','status'];
    protected $withCount = ['students', 'reviews'];

    use HasFactory;
    const BORRADOR = 1;
    const REVISION = 2;
    const PUBLICADO = 3;

    public function getRatingAttribute(){

        if ($this->reviews_count){
        return round($this->reviews->avg('rating'),1);
        }else{
             return 5;
        }
    
    
    }

    public function chats(){
        return $this->hasMany('App\Models\chat');
    }

    public function scopeCategory($query, $category_id)
    {
        if($category_id){
            return $query->where('category_id', $category_id);
        }
    }

    public function scopeLevel($query, $level_id)
    {
        if($level_id){
            return $query->where('level_id', $level_id);
        }
    }

         public function getRouteKeyName()
        {
            return 'slug';
        }

        //Relacion uno a un o

public function observation(){
    return $this->hasOne('App\Models\Observation');
}
    //relacion uno a muchos 
    public function reviews(){
        return $this->hasMany('App\Models\Review');
    }

    public function requirements(){
        return $this->hasMany('App\Models\Requirement');
    }
    
    public function goals(){
        return $this->hasMany('App\Models\Goal');
    }
    
    public function audiences(){
        return $this->hasMany('App\Models\Audience');
    }
    
    public function sections(){
        return $this->hasMany('App\Models\Section');
    }

    // relacion uno a muchos inversa 

    public function teacher(){
        return $this->belongsTo('App\Models\User', 'user_id');
    }

    public function level(){
        return $this->belongsTo('App\Models\Level');
    }
    
    public function category(){
        return $this->belongsTo('App\Models\Category');
    }
    public function price(){
        return $this->belongsTo('App\Models\Price');
    }

    


    // relacion muchos a muchos 

    public function students(){
        return $this->belongsToMany('App\Models\User');
    }
    public function student(){
        return $this->belongsToMany('App\Models\User');
    }

    //Relacion uno a uno polimorfica 

    public function image(){
        return $this->morphOne('App\Models\Image','imageable');
    }
    
    public function lessons(){

        return $this->hasManyThrough('App\Models\Lesson', 'App\Models\Section');
    }
    //Relacion uno a muchos polimorfica

    public function questions(){
        return $this->morphMany(Question::class,'questionable');
    }

    public function scopeFilter($query, $filters)
    {
        $query->when($filters['category'] ?? null,function($query,$category){
            $query->whereIn('category_id', $category);
        })->when($filters['order'] ?? 'new', function($query, $order){
            $sort = $order == 'new' ? 'desc' : 'asc';
            $query->orderBy('created_at', $sort);
        })->when($filters['level'] ?? null,function($query,$level){
            $query->whereIn('level_id', $level);
        })->when($filters['price'] ?? null,function($query,$price){
            $query->whereIn('price_id', $price);
        });
    }
    

}
