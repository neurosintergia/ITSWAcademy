<?php

namespace Database\Seeders;

use App\Models\Categori;
use App\Models\Tag;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Storage;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        Storage::deleteDirectory('courses');
        Storage::makeDirectory('courses');
        Storage::deleteDirectory('categoriis');
        Storage::makeDirectory('categoriis');
        Storage::deleteDirectory('subcategoriis');
        Storage::makeDirectory('subcategoriis');
        Storage::deleteDirectory('courses');
        Storage::makeDirectory('courses');
        $this->call(RoleSeeder::class);

        $this->call(UserSeeder::class);
        $this->call(LevelSeeder::class);
        $this->call(CategorySeeder::class);


        $this->call(CategoriiSeeder::class);
        $this->call(SubcategoriiSeeder::class);
        $this->call(ProductSeeder::class);
        $this->call(ColorSeeder::class);
        $this->call(ColorProductSeeder::class);
        $this->call(SizeSeeder::class);
        $this->call(ColorSizeSeeder::class);
        $this->call(DepartmentSeeder::class);


        $this->call(PriceSeeder::class);
        $this->call(PlatformSeeder::class);
        $this->call(CourseSeeder::class);
    
        Categori::factory(4)->create();
        Tag::factory(8)->create();
        $this->call(PostSeeder::class);


    }
}
