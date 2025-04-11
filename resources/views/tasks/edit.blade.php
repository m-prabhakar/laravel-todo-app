@extends('layout')

@section('content')
<h2 class="text-2xl font-bold mb-6">Edit Task</h2>

<form action="{{ route('tasks.update', $task) }}" method="POST" class="space-y-4">
    @csrf
    @method('PUT')

    <div>
        <label class="block font-semibold">Title</label>
        <input type="text" name="title" value="{{ old('title', $task->title) }}" required
               class="w-full border p-2 rounded mt-1">
        @error('title')
            <span class="text-red-500 text-sm">{{ $message }}</span>
        @enderror
    </div>

    <div>
        <label class="block font-semibold">Description</label>
        <textarea name="description" rows="4"
                  class="w-full border p-2 rounded mt-1">{{ old('description', $task->description) }}</textarea>
    </div>

    <div>
        <label class="block font-semibold">Category</label>
        <select name="category_id" required class="w-full border p-2 rounded mt-1">
            <option value="">Select Category</option>
            @foreach ($categories as $category)
                <option value="{{ $category->id }}" {{ $task->category_id == $category->id ? 'selected' : '' }}>
                    {{ $category->name }}
                </option>
            @endforeach
        </select>
        @error('category_id')
            <span class="text-red-500 text-sm">{{ $message }}</span>
        @enderror
    </div>

    <div class="flex items-center">
        <!-- Hidden input ensures '0' is sent when checkbox is unchecked -->
        <input type="hidden" name="is_completed" value="0">

        <!-- Actual checkbox -->
        <!-- <input type="checkbox" name="is_completed" value="1" id="is_completed"
               {{ $task->is_completed ? 'checked' : '' }}
               class="mr-2">
        <label for="is_completed" class="font-semibold">Mark as Completed</label> -->

        <!-- alternate toggle  -->
        <div class="flex items-center space-x-0">
            <input type="hidden" name="is_completed" value="0">
            <label for="is_completed" class="flex items-center cursor-pointer">
                <div class="relative">
                    <input type="checkbox" id="is_completed" name="is_completed" value="1"
                        class="sr-only peer" {{ $task->is_completed ? 'checked' : '' }}>
                    <div class="w-11 h-6 bg-gray-300 rounded-full peer peer-checked:bg-blue-500 transition-colors duration-200"></div>
                    <div class="absolute top-0.5 left-0.5 w-5 h-5 bg-white rounded-full transition-transform duration-200 peer-checked:translate-x-full"></div>
                </div>
                <span class="ml-3 text-sm font-medium text-gray-900">Mark as Completed</span>
            </label>
        </div>

    </div>

    <div class="flex items-center gap-4">
        <button type="submit"
                class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">
            Update Task
        </button>

        <a href="{{ route('tasks.index') }}" class="text-sm text-gray-600 hover:underline">Cancel</a>
    </div>
</form>
@endsection
