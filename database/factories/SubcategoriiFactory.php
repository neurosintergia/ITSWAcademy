<?php

namespace Database\Factories;

use App\Models\Subcategorii;
use Illuminate\Database\Eloquent\Factories\Factory;

class SubcategoriiFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Subcategorii::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'image' => 'subcategoriis/' . $this->faker->image('public/storage/subcategoriis', 640, 480, null, false )
        ];
    }
}
