<x-guest-layout>
    <div class="w-full max-w-md mx-auto mt-10 p-8 bg-white shadow-md rounded-xl">
        <div class="text-center mb-6">
            <img src="{{ asset('images/todo-logo.png') }}" alt="To-Do List Logo" class="w-24 mx-auto">
            <h1 class="text-2xl font-bold mt-2 text-gray-700">Create Your To-Do Account</h1>
            <p class="text-sm text-gray-500">Plan. Prioritize. Perform.</p>
        </div>

        <form method="POST" action="{{ route('register') }}">
            @csrf

            <!-- Name -->
            <div class="mb-4">
                <label for="name" class="block text-sm font-medium text-gray-700">Name</label>
                <input id="name" type="text" name="name" value="{{ old('name') }}" required autofocus
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
            </div>

            <!-- Email Address -->
            <div class="mb-4">
                <label for="email" class="block text-sm font-medium text-gray-700">Email</label>
                <input id="email" type="email" name="email" value="{{ old('email') }}" required
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
            </div>

            <!-- Password -->
            <div class="mb-4">
                <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                <input id="password" type="password" name="password" required autocomplete="new-password"
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
            </div>

            <!-- Confirm Password -->
            <div class="mb-6">
                <label for="password_confirmation" class="block text-sm font-medium text-gray-700">Confirm Password</label>
                <input id="password_confirmation" type="password" name="password_confirmation" required
                    class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
            </div>

            <div>
                <button type="submit"
                    class="w-full bg-blue-600 text-white py-2 px-4 rounded hover:bg-blue-700 transition">
                    Register
                </button>
            </div>

            <p class="text-sm text-center text-gray-500 mt-4">
                Already registered?
                <a href="{{ route('login') }}" class="text-blue-600 hover:underline">Log in</a>
            </p>
        </form>
    </div>
</x-guest-layout>


