<?php

namespace App\Http\Livewire\Admin;

use App\Models\User;
use Livewire\Component;
use Livewire\WithPagination;
use Spatie\Permission\Models\Role;

class UsersIndex extends Component
{
    use WithPagination;
    public $search;

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
                        
        return view('livewire.admin.users-index', compact('users'));
    }




}
