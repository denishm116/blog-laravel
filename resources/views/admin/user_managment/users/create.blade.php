<@extends('admin.layouts.admin')

@section('content')
    <div class="container">

        @component('admin.components.breadcrumbs')
            @slot('title') Создание пользователя @endslot
            @slot('parent') Главная  @endslot
            @slot('active') Статьий @endslot
        @endcomponent
        <hr />
        <form class="form-horizontal" action="{{route('admin.user_managment.user.store')}}" method="post" enctype="multipart/form-data">
            @csrf

            {{-- Form include --}}
            @include('admin.user_managment.users.partials.form')

        </form>
    </div>
@endsection
