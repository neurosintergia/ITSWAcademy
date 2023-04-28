<?php

namespace Database\Factories;
use Illuminate\Support\Str;
use App\Models\Categori;
use Illuminate\Database\Eloquent\Factories\Factory;

class CategoriFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Categori::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $name = $this->faker->unique()->word(20);
        return [
            'name' => $name ,
            'slug' => Str::slug($name)
        ];
    }
}
