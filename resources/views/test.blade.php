@extends('layouts.app')

@section('content')
    <div id="app">
        {{--    <example-component :article="{{json_encode($article)}}"></example-component>--}}
            <prop-component></prop-component>
    <h1>Пизда</h1>
        <example-component></example-component>
    </div>
    @endsection
