<?php

namespace Database\Factories;

use App\Models\Categorii;
use App\Models\Product;
use App\Models\Subcategorii;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        $name = $this->faker->sentence(2);

   $subcategorii = Subcategorii::all()->random();   
   
   $categorii = $subcategorii->categorii;
        $brand = $categorii->brands->random();

        if ($subcategorii->color) {
           $quantity = null;
        }else{
            $quantity = 15;
        }

        return [
            'name' => $name ,
            'slug' => Str::slug($name),
            'description' => $this->faker->text(),
            'price' => $this->faker->randomElement([19.99, 49.99, 99.99]),
            'subcategorii_id' => $subcategorii->id,
            'brand_id' => $brand->id,
            'quantity' =>  $quantity ,
            'status' => 2
        ];
    }
}
