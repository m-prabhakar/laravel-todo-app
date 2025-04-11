<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;
    //added
    public function user() {
        return $this->belongsTo(User::class);
    }
    public function category() {
        return $this->belongsTo(Category::class);
    }
    
    protected $fillable = [
        'title',
        'description',
        'category_id',
        'user_id',
        'is_completed',
    ];

    // Optional: relationships
    // public function category()
    // {
    //     return $this->belongsTo(Category::class);
    // }
}
