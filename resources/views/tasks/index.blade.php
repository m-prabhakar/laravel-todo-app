@extends('layout')

@section('content')
<div class="flex justify-between items-center mb-6">
    <h2 class="text-2xl font-bold">Your Tasks</h2>
    <a href="{{ route('tasks.create') }}" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700">
        + New Task
    </a>
</div>

<form method="GET" class="mb-4 flex space-x-4">
    <!-- <select name="category" class="border p-2 rounded"> -->
    <select name="category" class="appearance-none border p-2 pr-8 rounded bg-white text-gray-700">
        <option value="">All Categories</option>
        @foreach ($categories as $category)
            <option value="{{ $category->id }}" {{ request('category') == $category->id ? 'selected' : '' }}>
                {{ $category->name }}
            </option>
        @endforeach
    </select>

    <!-- <select name="status" class="border p-2 rounded"> -->
    <select name="status" class="appearance-none border p-2 pr-8 rounded bg-white text-gray-700">
        <option value="">All Statuses</option>
        <option value="completed" {{ request('status') == 'completed' ? 'selected' : '' }}>Completed</option>
        <option value="pending" {{ request('status') == 'pending' ? 'selected' : '' }}>Pending</option>
    </select>

    <button type="submit" class="bg-gray-700 text-white px-8 py-2 rounded hover:bg-gray-800">Filter</button>
</form>

@if ($tasks->count())
    <div class="grid gap-4">
        @foreach ($tasks as $task)
            <div class="bg-white p-4 rounded shadow flex justify-between items-center">
                <div>
                    <h3 class="text-lg font-semibold {{ $task->is_completed ? 'line-through text-gray-500' : '' }}">
                        {{ $task->title }}
                    </h3>
                    <p class="text-sm text-gray-600">{{ $task->category->name ?? 'No Category' }}</p>
                </div>
                <div class="flex items-center gap-2">
                    @if (!$task->is_completed)
                        <span class="px-2 py-1 text-xs bg-yellow-100 text-yellow-800 rounded">Pending</span>
                    @else
                        <span class="px-2 py-1 text-xs bg-green-100 text-green-800 rounded">Completed</span>
                    @endif

                    <!-- View Button -->
                    <button onclick="openModal('modal-{{ $task->id }}')" class="text-indigo-600 hover:underline text-sm">
                        View
                    </button>

                    <a href="{{ route('tasks.edit', $task) }}" class="text-blue-600 hover:underline text-sm">Edit</a>

                    <form action="{{ route('tasks.destroy', $task) }}" method="POST" onsubmit="return confirm('Delete this task?')">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="text-red-600 hover:underline text-sm">Delete</button>
                    </form>
                </div>
            </div>

            <!-- Modal -->
            <div id="modal-{{ $task->id }}" class="fixed inset-0 z-50 hidden bg-black bg-opacity-50 flex items-center justify-center">
                <div class="bg-white rounded-lg w-96 shadow-lg">
                    <div class="flex justify-between items-center px-4 py-2 border-b">
                        <h3 class="text-lg font-bold">{{ $task->title }}</h3>
                        <button onclick="closeModal('modal-{{ $task->id }}')" class="text-gray-600 text-xl">&times;</button>
                    </div>
                    <div class="p-4 space-y-2">
                        <p><strong>Category:</strong> {{ $task->category->name ?? 'No Category' }}</p>
                        <p><strong>Description:</strong> {{ $task->description }}</p>
                        <p><strong>Status:</strong> {{ $task->is_completed ? 'Completed' : 'Pending' }}</p>
                    </div>
                    <div class="flex justify-end p-2 border-t">
                        <button onclick="closeModal('modal-{{ $task->id }}')" class="px-4 py-1 bg-gray-600 text-white rounded hover:bg-gray-700">Close</button>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@else
    <p class="text-gray-600">No tasks found.</p>
@endif

<script>
    function openModal(id) {
        document.getElementById(id).classList.remove('hidden');
    }

    function closeModal(id) {
        document.getElementById(id).classList.add('hidden');
    }
</script>
@endsection
