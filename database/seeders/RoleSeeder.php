<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role1 = Role::create(['name' => 'Admin']);
        $role2 = Role::create(['name' => 'Blogger']);
        $role3 = Role::create([ 'name' => 'Instructor']);

        

           
        Permission::create(['name' => 'admin.home',
                            'description' => 'Ver dashboard'])->syncRoles([$role1, $role2, $role3]);

Permission::create(['name' => 'Ver dashboard',
                            'description' => 'Ver dashboard'])->syncRoles([$role1, $role2, $role3]);

      Permission::create(['name' => 'admin.users.index',
                            'description' => 'Ver listado de usuarios'])->syncRoles([$role1]);

        Permission::create(['name' => 'admin.users.edit',
                            'description' => 'Asignar un rol'])->syncRoles([$role1]);



      
        Permission::create(['name' => 'Crear Cursos',
                            'description' => 'Crear Cursos'])->syncRoles([$role1,$role3]);
        
        Permission::create(['name' => 'Leer cursos',
                            'description' => 'Leer cursos'])->syncRoles([$role1,$role3]);

        Permission::create(['name' => 'Actualizar cursos',
                            'description' => 'Actualizar cursos'])->syncRoles([$role1,$role3]);

	  Permission::create(['name' => 'Eliminar Cursos',
                            'description' => 'Eliminar Cursos'])->syncRoles([$role1,$role3]); 
 

  Permission::create(['name' => 'admin.categories.index',
                            'description' => 'Ver listado de categorías C'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.categories.create',
                            'description' => 'Crear categorías C'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.categories.edit',
                            'description' => 'Editar categorías C'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.categories.destroy',
                            'description' => 'Eliminar categorías C'])->syncRoles([$role1]);

 Permission::create(['name' => 'admin.prices.index',
                            'description' => 'Ver listado de precios'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.prices.create',
                            'description' => 'Crear precios'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.prices.edit',
                            'description' => 'Editar precios'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.prices.destroy',
                            'description' => 'Eliminar precios'])->syncRoles([$role1]);  

                            
        Permission::create(['name' => 'admin.levels.index',
         'description' => 'Ver listado de niveles'])->syncRoles([$role1]);
Permission::create(['name' => 'admin.levels.create',
         'description' => 'Crear niveles'])->syncRoles([$role1]);
Permission::create(['name' => 'admin.levels.edit',
         'description' => 'Editar niveles'])->syncRoles([$role1]);
Permission::create(['name' => 'admin.levels.destroy',
         'description' => 'Eliminar niveles'])->syncRoles([$role1]); 









       


        Permission::create(['name' => 'Crear role',
                             'description' => 'Crear role'])->syncRoles([$role1]);
                    
        Permission::create(['name' => 'Listar role',
                                'description' =>  'Listar role'])->syncRoles([$role1]);

        Permission::create(['name' => 'Editar role',
                                'description' => 'Editar role'])->syncRoles([$role1]);
                    
        Permission::create(['name' => 'Eliminar role',
                                'description' => 'Eliminar role'])->syncRoles([$role1]);
                    
        Permission::create(['name' => 'Leer usuarios',
                                'description' => 'Leer usuarios'])->syncRoles([$role1]);
                    
        Permission::create(['name' => 'Editar usuarios',
                                'description' => 'Editar usuarios'])->syncRoles([$role1]);
        

        Permission::create(['name' => 'admin.categoris.index',
                            'description' => 'Ver listado de categorías'])->syncRoles([$role1,$role2]);
        Permission::create(['name' => 'admin.categoris.create',
                            'description' => 'Crear categorías'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.categoris.edit',
                            'description' => 'Editar categorías'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.categoris.destroy',
                            'description' => 'Eliminar categorías'])->syncRoles([$role1]);


        Permission::create(['name' => 'admin.tags.index',
                            'description' => 'ver listado de etiquetas'])->syncRoles([$role1,$role2]);
        Permission::create(['name' => 'admin.tags.create',
                            'description' => 'Crear etiquetas'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.tags.edit',
                            'description' => 'Editar etiquetas'])->syncRoles([$role1]);
        Permission::create(['name' => 'admin.tags.destroy',
                            'description' => 'Eliminar etiquetas'])->syncRoles([$role1]);

        Permission::create(['name' => 'admin.posts.index',
                            'description' => 'Ver listado de posts'])->syncRoles([$role1, $role2]);
        Permission::create(['name' => 'admin.posts.create',
                            'description' => 'Crear posts'])->syncRoles([$role1, $role2]);
        Permission::create(['name' => 'admin.posts.edit',
                            'description' => 'Editar posts'])->syncRoles([$role1, $role2]);
        Permission::create(['name' => 'admin.posts.destroy',
                            'description' => 'Eliminar posts'])->syncRoles([$role1, $role2]);

       
    }
}
