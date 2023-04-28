<?php

namespace Database\Seeders;

use App\Models\Subcategorii;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class SubcategoriiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $subcategoriis = [
            /* Laptop */
            [
                'categorii_id'=> 1,
                'name'=> 'Almacenamiento',
                'slug'=> Str::slug('Almacenamiento'),
               'color' => true
            ],
            [
                'categorii_id'=> 1,
                'name'=> 'Display',
                'slug'=> Str::slug('Display'),
              
            ],
            [
                'categorii_id'=> 1,
                'name'=> 'Ram',
                'slug'=> Str::slug('Ram'),
        
            ],
                  /* Desktop */
                  [
                    'categorii_id'=> 2,
                    'name'=> 'Almacenamiento',
                    'slug'=> Str::slug('Almacenamiento'),
                  
                ],
                [
                    'categorii_id'=> 2,
                    'name'=> 'Monitor',
                    'slug'=> Str::slug('Monitor'),
                  
                ],
                [
                    'categorii_id'=> 2,
                    'name'=> 'Ram',
                    'slug'=> Str::slug('Ram'),
            
                ],

                 /* Redes */
                 [
                    'categorii_id'=> 3,
                    'name'=> 'Tarjetas Wifi',
                    'slug'=> Str::slug('Tarjetas Wifi'),
                
                ],
                [
                    'categorii_id'=> 3,
                    'name'=> 'Antena',
                    'slug'=> Str::slug('Antena'),
                  
                ],
                [
                    'categorii_id'=> 3,
                    'name'=> 'Access Point',
                    'slug'=> Str::slug('Access Point'),
            
                ],
                [
                    'categorii_id'=> 3,
                    'name'=> 'Cables',
                    'slug'=> Str::slug('Cables'),
            
                ],

                 /* Seguridad */
                 [
                    'categorii_id'=> 4,
                    'name'=> 'Camaras',
                    'slug'=> Str::slug('Camaras'),
                
                ],
                [
                    'categorii_id'=> 4,
                    'name'=> 'Sensores',
                    'slug'=> Str::slug('Sensores'),
                  
                ],
                [
                    'categorii_id'=> 4,
                    'name'=> 'Software',
                    'slug'=> Str::slug('Software'),
            
                ],
                [
                    'categorii_id'=> 4,
                    'name'=> 'Hardware',
                    'slug'=> Str::slug('Hardware'),
            
                ],


                   /* Moda */
                   [
                    'categorii_id'=> 5,
                    'name'=> 'Mujeres',
                    'slug'=> Str::slug('Mujeres'),
                    'color' => true,
                    'size' => true
                
                ],
                [
                    'categorii_id'=> 5,
                    'name'=> 'Hombres',
                    'slug'=> Str::slug('Hombres'),
                    'color' => true,
                    'size' => true
                  
                ],
                [
                    'categorii_id'=> 5,
                    'name'=> 'Lentes',
                    'slug'=> Str::slug('Lentes'),
            
                ],

                [
                    'categorii_id'=> 5,
                    'name'=> 'Relojes',
                    'slug'=> Str::slug('Relojes'),
            
                ],
          
        ];

        foreach ($subcategoriis as $subcategorii){
            Subcategorii::create($subcategorii);
        }
    }
}
