@extends('layouts.app')

@section('content')
    <div class="container kotha-sidebar">
        <h1>Изменить статью</h1>

        <hr />
        <form class="form-horizontal" action="{{route('update')}}" method="post" enctype="multipart/form-data">
            @csrf

            {{-- Form include --}}
            @include('blog.partials.form')
            <input type="hidden" name="article_id" value="{{$article->id}}">
        </form>
    </div>
@endsection
