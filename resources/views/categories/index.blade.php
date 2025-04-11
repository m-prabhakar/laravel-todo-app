@extends('layout')

@section('content')
<div class="flex justify-between items-center mb-6">
    <h2 class="text-2xl font-bold">Task Categories</h2>
    <a href="{{ route('categories.create') }}" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
        + Add Category
    </a>
</div>

@if ($categories->count())
    <div class="grid gap-4">
        @foreach ($categories as $category)
            <div class="bg-white p-4 rounded shadow flex justify-between items-center">
                <div>
                    <h3 class="text-lg font-semibold">{{ $category->name }}</h3>
                </div>
                <div class="flex items-center gap-2">
                    <a href="{{ route('categories.edit', $category) }}" class="text-blue-600 hover:underline text-sm">Edit</a>
                    <form action="{{ route('categories.destroy', $category) }}" method="POST" onsubmit="return confirm('Delete this category?')">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="text-red-600 hover:underline text-sm">Delete</button>
                    </form>
                </div>
            </div>
        @endforeach
    </div>
@else
    <p class="text-gray-600">No categories added yet.</p>
@endif
@endsection
