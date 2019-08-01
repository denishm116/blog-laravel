@extends('admin.layouts.admin')

@section('content')
    <div class="container">

        @component('admin.components.breadcrumbs')
            @slot('title') Редактирование пользователя @endslot
            @slot('parent') Главная  @endslot
            @slot('active') Пользователи @endslot
        @endcomponent
        <hr />
        <form class="form-horizontal" action="{{route('admin.user_managment.user.update', $user)}}" method="post" enctype="multipart/form-data">
            {{method_field('PUT')}}
            {{csrf_field()}}


            {{--Form include --}}
            @include('admin.user_managment.users.partials.form')
        </form>
    </div>
@endsection
