@extends('admin.layouts.admin')

@section('content')
    <div class="container">

        @component('admin.components.breadcrumbs')
            @slot('title') Создание статьи @endslot
            @slot('parent') Главная  @endslot
            @slot('active') Статьий @endslot
        @endcomponent
        <hr />
        <form class="form-horizontal" action="{{route('admin.article.store')}}" method="post">
            @csrf

            {{-- Form include --}}
            @include('admin.articles.partials.form', ['article' => $article])
            <input type="hidden" name="user_id" value="{{Auth::id()}}">
        </form>
    </div>
@endsection
