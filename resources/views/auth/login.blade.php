<x-guest-layout>
    <div class="flex justify-center items-center min-h-scree bg-gray-100">
        <div class="w-full max-w-md bg-white p-8 rounded-2xl shadow-lg">
            {{-- To-Do Logo --}}
            <div class="flex justify-center mb-6">
                <img src="{{ asset('images/todo-logo.png') }}" alt="To-Do Logo" class="w-36 h-36">
            </div>

            <!-- <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">Welcome to Your To-Do List</h2> -->

            <!-- Session Status -->
            <x-auth-session-status class="mb-4" :status="session('status')" />

            <form method="POST" action="{{ route('login') }}">
                @csrf

                <!-- Email Address -->
                <div class="mb-4">
                    <label class="block text-gray-700 font-medium mb-1" for="email">Email</label>
                    <input id="email" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" type="email" name="email" value="{{ old('email') }}" required autofocus>
                </div>

                <!-- Password -->
                <div class="mb-4">
                    <label class="block text-gray-700 font-medium mb-1" for="password">Password</label>
                    <input id="password" class="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" type="password" name="password" required autocomplete="current-password">
                </div>

                <!-- Remember Me -->
                <div class="flex items-center justify-between mb-6">
                    <label class="flex items-center">
                        <input type="checkbox" name="remember" class="mr-2">
                        <span class="text-sm text-gray-600">Remember me</span>
                    </label>

                    <!-- @if (Route::has('password.request'))
                        <a class="text-sm text-blue-600 hover:underline" href="{{ route('password.request') }}">
                            Forgot your password?
                        </a>
                    @endif -->

                    @if (Route::has('register'))
                        <a class="text-sm text-blue-600 hover:underline" href="{{ route('register') }}">
                            {{ __('New here? Register') }}
                        </a>
                    @endif

                </div>

                <div>
                    <button class="w-full bg-blue-600 text-white font-bold py-2 px-4 rounded-lg hover:bg-blue-700 transition-all">
                        Log in
                    </button>
                </div>
            </form>
            @if(session('status'))
                <div class="mt-6 mb-4 text-center text-sm text-green-600 font-medium">
                    {{ session('status') }}
                </div>
            @endif

            @if($errors->any())
                <div class="mt-6 mb-4 text-center text-sm text-red-600">
                    {{ $errors->first() }}
                </div>
            @endif

        </div>
    </div>
</x-guest-layout>


