<?php

namespace App\Http\Livewire;
use App\Models\User;
use Livewire\WithPagination;
use Livewire\Component;

class AdminUsers extends Component
{

    use WithPagination;
    protected $paginationTheme = "bootstrap";
    public $search;

    public function render()
    {
        $users = User::where('name','LIKE','%'.$this->search.'%')
        ->orwhere('email','LIKE','%'.$this->search.'%')
        ->paginate(10);
      
        return view('livewire.admin-users',compact('users'));
    }

    public function limpiar_page(){
        $this->reset('page');
    }
}
