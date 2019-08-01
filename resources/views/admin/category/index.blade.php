@extends('admin.layouts.admin')

@section('content')
    <div class="container">

        @component('admin.components.breadcrumbs')
            @slot('title') Список категорий @endslot
            @slot('parent') Главная  @endslot
            @slot('active') Категории @endslot
        @endcomponent
        <hr />

            <a href="{{route('admin.category.create')}}" class="btn btn-primary pull-right"><i class="fa fa-plus-square-o"></i>Создать категорию </a>
        <table class="table table-striped">
            <thead>
            <th>Наименование</th>
            <th>Дочерние категории</th>
            <th>Родитель</th>
            <th>Опубликовано</th>
            <th class="text-right">Действие</th>
            </thead>
            <tbody>

            @forelse($categories as $categoryItem)
                <tr>
                    <td>

                        <a href="{{route('category', $categoryItem->slug)}}">

                            {{$categoryItem->title}}</a>
                    </td>

                            <td>
                                @foreach($categoryItem->children as $cat)
                                    {{$cat->title}}
                                @endforeach
                            </td>


                    <td>
                        @forelse($categories as $cat)
                            @if ($categoryItem->parent_id == $cat->id)
                            {{$cat->title}}
                            @endif
                        @empty
                        @endforelse
                    </td>

                    <td>{{$categoryItem->published}}</td>




                    <td class="text-right">
                        <form onsubmit="if(confirm('Удалить?')){return true}else {return false}" method="post" action="{{route('admin.category.destroy',$categoryItem)}}">
                            <input type="hidden" name="_method" value="DELETE">
                            {{csrf_field()}}
                            <button type="submit" class="btn bg-transparent"><i class="fa fa-trash"></i></button>


                            <a href="{{route('admin.category.edit', $categoryItem)}}" class="btn"><i class="fa fa-edit"></i> </a>
                        </form>

                    </td>
                    <td></td>
                </tr>
            @empty
                <tr>
                    <td colspan="5" class="text-center"><h2>Данные отсутствуют</h2></td>
                </tr>
            @endforelse
            </tbody>
            <tfoot>
            <tr>
                <td colspan="3">
                    <ul class="pagination pull-right">
{{--                        {{$categories->links()}}--}}
                    </ul>
                </td>
            </tr>
            </tfoot>
        </table>
    </div>
@endsection
