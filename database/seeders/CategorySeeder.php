<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //added
        // Category::create(['name' => 'Personal']);
        // Category::create(['name' => 'Work']);
        // Category::create(['name' => 'Urgent']);
        // Category::create(['name' => 'Home']);

        $categories = ['Urgent', 'Personal', 'Official','Home'];

        foreach ($categories as $name) {
            Category::create(['name' => $name]);
        }
    }
}