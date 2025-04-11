@extends('layout')

@section('content')
<h2 class="text-2xl font-bold mb-6">Create New Task</h2>

<form action="{{ route('tasks.store') }}" method="POST" class="space-y-4">
    @csrf

    <div>
        <label class="block font-semibold">Title</label>
        <input type="text" name="title" value="{{ old('title') }}" required
               class="w-full border p-2 rounded mt-1">
        @error('title')
            <span class="text-red-500 text-sm">{{ $message }}</span>
        @enderror
    </div>

    <div>
        <label class="block font-semibold">Description</label>
        <textarea name="description" rows="4"
                  class="w-full border p-2 rounded mt-1">{{ old('description') }}</textarea>
    </div>

    <div>
        <label class="block font-semibold">Category</label>
        <select name="category_id" required class="w-full border p-2 rounded mt-1">
            <option value="">Select Category</option>
            @foreach ($categories as $category)
                <option value="{{ $category->id }}" {{ old('category_id') == $category->id ? 'selected' : '' }}>
                    {{ $category->name }}
                </option>
            @endforeach
        </select>
        @error('category_id')
            <span class="text-red-500 text-sm">{{ $message }}</span>
        @enderror
    </div>

    <button type="submit"
            class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
        Create Task
    </button>

    <a href="{{ route('tasks.index') }}" class="text-sm text-gray-600 hover:underline ml-4">Cancel</a>
</form>
@endsection
