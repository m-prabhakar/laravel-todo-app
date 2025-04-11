<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

use App\Models\Task;
use App\Models\User;

class TaskSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //added
        $user = User::first(); // or create a dummy user

        Task::create([
            'title' => 'Buy groceries',
            'description' => 'Milk, Eggs, Bread',
            'is_completed' => false,
            'category_id' => 1,
            'user_id' => $user->id,
        ]);
    }
}


