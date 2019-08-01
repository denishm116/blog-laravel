@extends('layouts.app')

@section('title', $category->title)

@section('content')
    <div class="container">
        <h1>Категория {{$category->title}}</h1>
        <ul>
        @foreach($category->children as $children)
                <li><h4>{{$children->title}}</h4></li>
            @endforeach
        </ul>
        @forelse($articles as $article)
        <div class="row">
            <div class="col-sm-12">
                <h2><a href="{{route('article', $article->slug)}}">{{$article->title}}</a> </h2>
                <p>{!! $article->short_description !!}</p>
            </div>
        </div>

    @empty
<h2>Пусто</h2>
    @endforelse
{{--        {{$articles->links()}}--}}
    </div>

@endsection
