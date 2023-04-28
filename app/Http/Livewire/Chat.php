<?php

namespace App\Http\Livewire;

use App\Models\Course;
use Livewire\Component;

class Chat extends Component
{
  

    public $course_id, $comment;
    public $rating = 5;

    public function mount(Course $course){
            $this->course_id= $course->id;
    }
    public function render()
    {
 
        $course = Course::find($this->course_id);
        return view('livewire.chat',compact('course'));
    }

    public function store(){

        $this->validate([
                 'comment' => 'required'
             ]);
             $course = Course::find($this->course_id);
             $course->chats()->create([
                 'comment' => $this->comment,
                 'rating' => $this->rating,
                 'user_id' => auth()->user()->id
             ]);

             $this->comment = "";
     
         }

}
