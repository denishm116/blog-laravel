@foreach($categories as $category)
    @if ($category->children->where('published', 1)->count())
    <li class="dropdown">
        <a href="{{url("/blog/category/$category->slug")}}"
            aria-haspopup="true" aria-expanded="false">{{$category->title}}</a>
        <ul class="dropdown-menu" role="menu">
            @include('layouts.top_menu', ['categories' => $category->children])
        </ul>
    </li>
    @else
        <li>
            <a href="{{url("/blog/category/$category->slug")}}">{{$category->title}}</a>

        </li>
    @endif
    @endforeach

