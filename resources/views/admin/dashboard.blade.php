@extends('admin.layouts.admin')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-sm-3">
                <div class="jumbotron bg-info">
                    <h4><span class="label label-primary">Категорий {{$cat}}</span></h4>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="jumbotron bg-info">
                    <h4><span class="label label-primary">Новостей {{$art}} </span></h4>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="jumbotron bg-info">
                    <h4><span class="label label-primary">Пользователей {{$users}}</span></h4>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="jumbotron bg-info">
                    <h4><span class="label label-primary">Авторов {{$authors}}</span></h4>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6">

                <a href="{{route('admin.category.create')}}" class="btn-block btn-default">Создать категорию</a>
               @foreach($categories as $category)
                <a class="list-group-item" href="{{route('admin.category.edit', $category)}}">
                    <h4 class="list-group-item-heading">{{$category->title}}</h4>
                    <p class="list-group-item-text">{{$category->articles->count()}}</p>
                </a>
                @endforeach
            </div>
            <div class="col-sm-6">
                <a href="{{route('admin.category.create')}}" class="btn-block btn-default">Создать статью</a>
                @foreach($articles as $article)

                <a class="list-group-item" href="{{route('admin.article.edit', $article)}}">
                    <h4 class="list-group-item-heading">{{$article->title}}</h4>
                    <p class="list-group-item-text">{{$article->categories()->pluck('title')->implode(', ')}}</p>
                </a>
                    @endforeach
            </div>
        </div>

    </div>

    </div>


@endsection
