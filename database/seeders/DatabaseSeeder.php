<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        \App\Models\User::factory()->create([
            'name' => 'prabhakar',
            'email' => 'prabhakar@gmail.com',
            'password' => bcrypt('pass123'),
        ]);
    
        $this->call([
            CategorySeeder::class,
            TaskSeeder::class,
        ]);

        $this->call([
            CategorySeeder::class,
            UserWithTasksSeeder::class,
        ]);
    }
}
