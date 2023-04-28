<?php

namespace Database\Factories;

use App\Models\Categorii;
use Illuminate\Database\Eloquent\Factories\Factory;

class CategoriiFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Categorii::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'image' => 'categoriis/' . $this->faker->image('public/storage/categoriis', 640, 480, null, false )
        ];
    }
}
