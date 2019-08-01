@extends('admin.layouts.admin')

@section('content')
    <div class="container">

        @component('admin.components.breadcrumbs')
            @slot('title') Список пользователей @endslot
            @slot('parent') Главная  @endslot
            @slot('active') Пользователи @endslot
        @endcomponent
        <hr />
        <a href="{{route('admin.user_managment.user.create')}}" class="btn btn-primary pull-right"><i class="fa fa-plus-square-o"></i>Создать Пользователя </a>
        <table class="table table-striped">
            <thead>
            <th>ID</th>
            <th>Имя</th>
            <th>Email</th>
            <th >Роль</th>
            <th >Аватар</th>
            <th class="text-right">Действие</th>

            </thead>
            <tbody>
            @forelse($users as $user)
                <tr>
                    <td>{{$user->id}}</td>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>



                    <td>
                        {{--                        {{$article->categories}}--}}
                        @foreach($user->roles as $role)

                            <div>{{$role->name}}</div>
                        @endforeach
                    <td><img width = "50" src="/upload/avatars/{{$user->image}}"></td>
                    </td>


                    <td class="text-right">
                        <form onsubmit="if(confirm('Удалить?')){return true}else {return false}" method="post" action="{{route('admin.user_managment.user.destroy',$user)}}">
                           {{ method_field('DELETE') }}
                            {{ csrf_field() }}
                            <button type="submit" class="btn bg-transparent"><i class="fa fa-trash"></i></button>


                            <a href="{{route('admin.user_managment.user.edit', $user)}}" class="btn"><i class="fa fa-edit"></i> </a>
                        </form>

                    </td>
                    <td></td>
                </tr>
            @empty
                <tr>
                    <td colspan="6" class="text-center"><h2>Данные отсутствуют</h2></td>
                </tr>
            @endforelse
            </tbody>
            <tfoot>
            <tr>
                <td colspan="3">
                    <ul class="pagination pull-right">
{{--                        {{$articles->links()}}--}}
                    </ul>
                </td>
            </tr>
            </tfoot>
        </table>
    </div>
@endsection
