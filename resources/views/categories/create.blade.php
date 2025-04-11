@extends('layout')

@section('content')
<h2 class="text-2xl font-bold mb-6">Add New Category</h2>

<form action="{{ route('categories.store') }}" method="POST" class="space-y-4">
    @csrf

    <div>
        <label class="block font-semibold">Category Name</label>
        <input type="text" name="name" value="{{ old('name') }}" required
               class="w-full border p-2 rounded mt-1">
        @error('name')
            <span class="text-red-500 text-sm">{{ $message }}</span>
        @enderror
    </div>

    <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
        Add Category
    </button>

    <a href="{{ route('categories.index') }}" class="text-sm text-gray-600 hover:underline ml-4">Cancel</a>
</form>
@endsection
