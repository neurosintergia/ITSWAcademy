<?php

namespace App\Http\Livewire\Instructor;

use App\Models\Course;
use App\Models\CourseUser;
use Livewire\Component;
use App\Models\User;
use Illuminate\Http\Request;
use Livewire\WithPagination;

class CoursesMatricula extends Component
{
    use WithPagination;
    public $course,$user_id ="",$student="",$search;

    public function mount(Course $course){
        $this->course = $course;
    
       }

  
    public function store(Request $request, User $user){
       
     
    //  dd($this->course->id);
      //dd($this->user_id);
      //$this->course->audiences()->create([
       // 'name' => $this->name
    // ]);
     $this->course->students()->attach($this->user_id);
     return redirect()->route('instructor.courses.students', $this->course);
    
    }

    public function destroy(Request $request){
//$this->course->delete($this->student) eliminar curso
//$this->course->id       curso
    

      $this->course->students()->detach($this->student);

      
      return redirect()->route('instructor.courses.students', $this->course);
         }

   

    public function render()
    {        $users = User::where(function($query){
        $query->where('name', 'LIKE', '%' . $this->search . '%');
        $query->orWhere('email', 'LIKE', '%' . $this->search . '%');
    })->paginate(100000);


        $students = $this->course->students()->where('name', 'LIKE', '%' . $this->search .'%')->paginate(100000);
        return view('livewire.instructor.courses-matricula', compact('users','students'))->layout('layouts.instructor', ['course'=> $this->course]);
    }
}
