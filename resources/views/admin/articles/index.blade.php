@extends('admin.layouts.admin')

@section('content')
    @if ($errors->any())
        <div class="alert alert-danger">
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </div>
    @endif

    <div class="container">

        @component('admin.components.breadcrumbs')
            @slot('title') Список статей @endslot
            @slot('parent') Главная  @endslot
            @slot('active') Статьи @endslot
        @endcomponent
        <hr />
        <a href="{{route('admin.article.create')}}" class="btn btn-primary pull-right"><i class="fa fa-plus-square-o"></i>Создать Статью </a>
        <table class="table table-striped">
            <thead>
            <th>Наименование</th>
            <th>Публикация</th>
            <th >Категория</th>
            <th class="text-right">Действие</th>
            </thead>
            <tbody>
            @forelse($articles as $article)
                <tr>
                    <td>{{$article->title}}</td>
                    <td>{{$article->published}}</td>


                    <td>
{{--                        {{$article->categories}}--}}
                        @foreach($article->categories as $cat)

                            <div>{{$cat->title}}</div>
                        @endforeach

                    </td>


                    <td class="text-right">
                        <form onsubmit="if(confirm('Удалить?')){return true}else {return false}" method="post" action="{{route('admin.article.destroy',$article)}}">
                            <input type="hidden" name="_method" value="DELETE">
                            {{csrf_field()}}
                            <button type="submit" class="btn bg-transparent"><i class="fa fa-trash"></i></button>


                            <a href="{{route('admin.article.edit', $article)}}" class="btn"><i class="fa fa-edit"></i> </a>
                        </form>

                    </td>
                    <td></td>
                </tr>
            @empty
                <tr>
                    <td colspan="4" class="text-center"><h2>Данные отсутствуют</h2></td>
                </tr>
            @endforelse
            </tbody>
            <tfoot>
            <tr>
                <td colspan="3">
                    <ul class="pagination pull-right">
                        {{$articles->links()}}
                    </ul>
                </td>
            </tr>
            </tfoot>
        </table>
    </div>
@endsection
