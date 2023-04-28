<?php

namespace Database\Factories;

use App\Models\Categori;
use Illuminate\Support\Str;
use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Post::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $name = $this->faker->unique()->sentence(8);
        return [
            'name'=> $name,
            'slug' => Str::slug($name),
            'extract' => $this->faker->text(250),
            'body' => $this->faker->text(200),
            'status' => $this->faker->randomElement([1,2]),
            'categori_id'=> Categori::all()->random()->id,
            'user_id'=> User::all()->random()->id
        ];
    }
}
