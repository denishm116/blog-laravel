@extends('layouts.app')

@section('content')
    <div class="container kotha-sidebar">
        <h1>Опубликовать статью</h1>

        <hr />
        <form class="form-horizontal" action="{{route('savepost')}}" method="post" enctype="multipart/form-data">
            @csrf

            {{-- Form include --}}
            @include('blog.partials.form')
            <input type="hidden" name="user_id" value="{{Auth::id()}}">
        </form>
    </div>
@endsection
