<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Spatie\Permission\Models\Role;


class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $role = Role::create(['name' => 'Stock']);

        $user = User::create([
            'name'=>'Manuel Cervantes José',
            'email'=>'intelisoftw@gmail.com',
            'password'=>bcrypt('12345678')
        ])->assignRole('Admin');

    

        User::factory(99)->create();
    }
}
