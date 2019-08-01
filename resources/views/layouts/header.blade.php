<header class="kotha-menu marketing-menu">
<nav class="navbar navbar-expand-md bg-90 shadow-sm">

    <div class="container" >
        <div class="menu-content">
            <!-- Brand and toggle get grouped for better mobile display -->

            <div class="collapse navbar-collapse" id="myNavbar">

                <ul class="nav navbar-nav navbar-header text-uppercase pull-left text-danger-light">
                <li><a href="{{route('home')}}">На главную</a></li>
              @include('layouts.top_menu', ['categories'=>$categories])

                @isset($article)
                @can('create', $article)
                        <li><a href="{{route('addpost')}}">Написать статью</a></li>
                    @endcan
                 @endisset



                @isset($user)
                    @if($user->roles->first()->name == 'admin')
                        <li><a href="{{route('admin.index')}}">Админка</a></li>
                        @endif
                    @endisset
                    {{----}}
                    {{--@elseif($user->roles->first()->name == 'author')--}}
                        {{--<li><a href="{{route('addpost')}}">Написать статью</a></li>--}}
                        {{--@else($user->roles->first()->name == 'author')--}}
                        {{--<li><a href="#">Можно только коментить</a></li>--}}
              {{----}}


                </ul>
            </div>

        </div>
    </div>


    <!-- Right Side Of Navbar -->
    <ul class="navbar-nav ml-auto">
        <!-- Authentication Links -->
        @guest
            <li class="nav-item">
                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
            </li>
            @if (Route::has('register'))
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                </li>
            @endif
        @else
            <li class="nav-item dropdown">
                <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                    {{ Auth::user()->name }} <span class="caret"></span>
                </a>

                <div class="dropdown-menu dropdown-menu-right" >
                    <a class="dropdown-item" href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        {{ __('Logout') }}
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </div>
            </li>
        @endguest
    </ul>
</nav>
</header>
