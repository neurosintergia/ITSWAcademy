<?php

namespace App\Http\Livewire\Instructor;

use App\Models\Course;
use Livewire\Component;
use Livewire\WithPagination;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class CoursesStudents extends Component
{
    use WithPagination;

    use AuthorizesRequests;

    public $course, $search;

    public function mount(Course $course){
     $this->course = $course;
     $this->authorize('dictated', $course);
    }

    public function updatingSearch(){
        $this->resetPage();
    }



    public function render()
    {
        //$students = $this->course->students()->where('name', 'LIKE', '%' . $this->search .'%')->paginate(5);
        $students = $this->course->students()->where(function($query){
            $query->where('name', 'LIKE', '%' . $this->search . '%');
            $query->orWhere('email', 'LIKE', '%' . $this->search . '%');
        })->paginate(5);



        return view('livewire.instructor.courses-students', compact('students'))->layout('layouts.instructor', ['course'=> $this->course]);
    }
}
