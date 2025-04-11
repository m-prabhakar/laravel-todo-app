<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Task;
use App\Models\Category;

class UserWithTasksSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Make sure categories are already seeded
        $categoryIds = Category::pluck('id')->toArray();

        User::factory(3)->create()->each(function ($user) use ($categoryIds) {
            $tasksCount = rand(5, 10);
            for ($i = 0; $i < $tasksCount; $i++) {
                Task::create([
                    'title' => 'Task ' . ($i + 1),
                    'description' => fake()->sentence(),
                    'is_completed' => rand(0, 1),
                    'category_id' => $categoryIds[array_rand($categoryIds)],
                    'user_id' => $user->id,
                ]);
            }
        });
    }
}
