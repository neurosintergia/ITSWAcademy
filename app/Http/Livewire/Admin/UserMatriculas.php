<?php

namespace App\Http\Livewire\Admin;

use App\Models\Course;
use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;
class UserMatriculas extends Component
{
    public $search;
    use WithPagination;

    protected $paginationTheme = "bootstrap";

    public function updatingSearch(){
        $this->resetPage();
    }


    
    public function render()
    {
        $users = User::where('email','<>', auth()->user()->email)
        ->where(function($query){
            $query->where('name', 'LIKE', '%' . $this->search . '%');
            $query->orWhere('email', 'LIKE', '%' . $this->search . '%');
        })->paginate(8);
        return view('livewire.admin.user-matriculas', compact('users'));
    }
}
