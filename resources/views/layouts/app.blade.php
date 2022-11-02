<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.bunny.net/css2?family=Nunito:wght@400;600;700&display=swap">

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="font-sans antialiased">
        <div class="min-h-screen bg-gray-100">
            @include('layouts.navigation')

            <!-- Page Heading -->
            @if (isset($header))
                <header class="bg-white shadow">
                    <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                        {{ $header }}
                    </div>
                </header>
            @endif

            <!-- Page Content -->
            <main>
                @if($errors->any())
                    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                        <div class="bg-red-100 rounded-lg py-5 px-6 mt-4 text-base text-red-700">
                            @foreach($errors->all() as $error)
                                <span class="block">{{ "• {$error}" }}</span>
                            @endforeach
                        </div>
                    </div>
                @endif

                @if(session('success'))
                    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                        <div class="bg-green-100 rounded-lg py-5 px-6 mt-4 text-base text-green-700">{{ session('success') }}</div>
                    </div>
                @endif

                {{ $slot }}
            </main>
        </div>
    </body>
</html>
