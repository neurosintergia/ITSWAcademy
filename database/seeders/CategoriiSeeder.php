<?php

namespace Database\Seeders;

use App\Models\Brand;
use App\Models\Categorii;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class CategoriiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categoriis = [
        [
            'name'=>'Laptop',
            'slug'=> Str::slug('Laptop'),
            'icon' => '<i class="fas fa-laptop"></i>'
        ],
        [
            'name'=>'Desktop',
            'slug'=> Str::slug('Desktop'),
            'icon' =>  '<i class="fas fa-tv"></i>'
        ],
        [
            'name'=>'Redes',
            'slug'=> Str::slug('Redes'),
            'icon' =>  '<i class="fas fa-network-wired"></i>'
        ],
        [
            'name'=>'Seguridad',
            'slug'=> Str::slug('Seguridad'),
            'icon' =>  '<i class="fas fa-shield-alt"></i>'
        ],
        [
            'name'=>'Moda',
            'slug'=> Str::slug('Moda'),
            'icon' =>  '<i class="fas fa-tshirt"></i>'
        ],
           
        ];

        foreach ($categoriis as $categorii){
           $categorii = Categorii::factory(1)->create($categorii)->first();
           $brands =  Brand::factory(4)->create();
           foreach ($brands as $brand) {
              $brand->categoriis()->attach($categorii->id);
           }
        }
    }
}
