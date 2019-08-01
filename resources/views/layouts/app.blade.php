<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Жилье для отдыхающих в ейске, гостиницы, частный сектор. Делитесь своими впечатлениями.">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>

    <link
        href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700,700i%7cOswald:300,400,500,600,700%7cPlayfair+Display:400,400i,700,700i"
        rel="stylesheet">
    <!-- Scripts -->

    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('assets/js/bootstrap.min.js') }}" defer></script>
    <script src="{{ asset('assets/js/slick.min.js') }}" defer></script>
    <script src="{{ asset('assets/js/main.js') }}" defer></script>
{{--    <script src="{{ asset('assets/js/ckeditor.js') }}" defer></script>--}}
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/slick-theme.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/slick.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/css/style.css') }}" rel="stylesheet">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <link href="{{ asset('css/app.css') }}" rel="stylesheet">

</head>
<body>
    <div id="app">
      @include('layouts.header')

        <main class="py-4">
            @yield('content')
        </main>
    </div>

    <script src="/vendor/unisharp/laravel-ckeditor/ckeditor.js"></script>
    {{--<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>--}}
</body>
</html>
