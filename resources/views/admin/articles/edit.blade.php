@extends('admin.layouts.admin')

@section('content')
    <div class="container">

        @component('admin.components.breadcrumbs')
            @slot('title') Список статей @endslot
            @slot('parent') Главная  @endslot
            @slot('active') Статьи @endslot
        @endcomponent
        <hr />
        <form class="form-horizontal" action="{{route('admin.article.update', $article)}}" method="post" enctype="multipart/form-data">
            <input type="hidden" name="_method" value="put">
            {{csrf_field()}}

            {{--Form include --}}
            @include('admin.articles.partials.form')
        </form>
    </div>
@endsection
