<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>To-Do App</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-gray-100 min-h-screen">

    <nav class="bg-white shadow p-4 flex justify-between items-center">
        <h1 class="text-xl font-bold">📝 To-Do App</h1>
        <div>
            @auth
                <a href="{{ route('tasks.index') }}" class="text-blue-600 font-semibold mx-2">Tasks</a>
                <a href="{{ route('categories.index') }}" class="text-blue-600 font-semibold mx-2">Categories</a>
                <form method="POST" action="{{ route('logout') }}" class="inline">
                    @csrf
                    <button type="submit" class="text-red-600 font-semibold">Logout</button>
                </form>
            @endauth
        </div>
    </nav>

    <div class="max-w-4xl mx-auto py-6 px-4">
        @if (session('success'))
            <div class="bg-green-100 text-green-800 p-4 rounded mb-4">
                {{ session('success') }}
            </div>
        @endif

        @yield('content')
    </div>
</body>
</html>
