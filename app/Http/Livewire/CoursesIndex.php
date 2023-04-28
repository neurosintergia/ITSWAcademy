<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Course;
use App\Models\Category;
use App\Models\Level;
use App\Models\Price;
use Livewire\WithPagination;
use Spatie\Permission\Models\Role;

class CoursesIndex extends Component
{
    use WithPagination;
    public $category_id;
    public $level_id;
    public $price_id;
    public $role_id;
    public function render()
    { 
        
        $categories = Category::all();
        $levels = Level::all();
        $prices = Price::all();
      

        $courses = Course::where('status', 3)
        ->filter(request()->all())
        ->category($this->category_id)
        ->level($this->level_id)
        ->level($this->price_id)
        ->latest('id')
        ->paginate(12);

        return view('livewire.courses-index', compact('courses','categories', 'levels','prices'));
    }

   

    public function resetFilters()
    {
        $this->reset(['category_id','level_id']);
    }
}
