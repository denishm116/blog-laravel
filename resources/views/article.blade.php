@extends('layouts.app')

@section('title', $article->title)

@section('content')


    <div class="kotha-default-content">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">

                    <article class="single-blog">
                        <div class="post-thumb">
                            <img src="/upload/images/{{$article->image}}" alt="">
                        </div>
                        <div class="post-content">
                            <div class="entry-header text-center text-uppercase">

                                @forelse($article->categories as $cat)
                                <a href="#" class="post-cat">{{$cat->title}}</a>
                                @empty
                                    Без категории
                                @endforelse

                                <h2>{{$article->title}}

                                </h2>
                            </div>
                            <div class="entry-content">
                            <p>{{$article->description}}
                                </p>

                            </div>

                            <div class="post-meta">
                               <ul class="pull-left list-inline author-meta">
                               <li class="author">By {{$article->user->name}} </li>
                               <li class="date">{{$article->created_at}}</li>
                               <li class="author">


                               </li>



                                </ul>
                                <ul class="pull-right list-inline">
                                    @auth
                                        <prop-component :slug = "{{json_encode($article->slug)}}" ></prop-component>
                                    @endauth
                                    @guest
                                        <i class="fa fa-heart"></i> {!! $article->reactionSummary()['like'] ?? '' !!}
                                    @endguest
                                    <li class="author">
                                        <i class="fa fa-eye" aria-hidden="true"></i>{{$article->viewed}}
                                    </li>



                                        @auth
                                            @if(Auth::id() == $article->user_id || Auth::user()->roles->first()->name == 'admin')
                                    <li><a href="{{route('editpost', $article->slug)}}">Редактировать</a> </li>
                                    <li><a href="{{route('deletepost', $article->slug)}}">Удалить</a> </li>
                                            @endif
                                            @endauth


                                </ul>
                            </div>
                        </div>
                    </article>




                    {{--<div class="row"><!--blog next previous-->--}}
                        {{--<div class="col-md-6">--}}
                            {{--<div class="single-blog-box">--}}
                                {{--<a href="#">--}}
                                    {{--<img src="/assets/images/blog-next-1.jpg" alt="">--}}
                                    {{--<div class="overlay">--}}
                                        {{--<div class="promo-text">--}}
                                            {{--<p><i class=" pull-left fa fa-angle-left"></i></p>--}}
                                            {{--<h5>A Good Thought Never be false</h5>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        {{--<div class="col-md-6">--}}
                            {{--<div class="single-blog-box">--}}
                                {{--<a href="#">--}}
                                    {{--<img src="/assets/images/blog-next-2.jpg" alt="">--}}
                                    {{--<div class="overlay">--}}
                                        {{--<div class="promo-text">--}}
                                            {{--<p><i class="pull-right fa fa-angle-right"></i></p>--}}
                                            {{--<h5>The Reason Why Everyone Love Hill</h5>--}}
                                        {{--</div>--}}
                                    {{--</div>--}}
                                {{--</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                    {{--</div>--}}
                    {{--<div class="related-post-carousel"><!--related post carousel-->--}}
                        {{--<div class="related-heading">--}}
                            {{--<h4>You might also like</h4>--}}
                        {{--</div>--}}


                        {{--<div class="related-post-carousel-items">--}}
                            {{--<div class="single-item">--}}
                                {{--<a href="#">--}}
                                    {{--<img src="/assets/images/p-1.jpg" alt="">--}}
                                    {{--<h4>Lorem ipsum dolor sit amet,</h4>--}}
                                {{--</a>--}}
                            {{--</div>--}}
                        {{--</div>--}}


                    {{--</div>--}}

                    @isset($article->comments)
                    <div class="comment-area">
                        <div class="comment-heading">
                            <h3>Комментарии</h3>

                            @include ('partials.comments')

                        </div>

                    </div>
                    @endisset



                    <div class="leave-comment">
                        <h4>Leave a reply</h4>
                        <form class="form-horizontal contact-form"  method="post" action="{{route('comment')}}">
                            @csrf
                            <div class="form-group">
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <textarea class="form-control" rows="6" name="content" placeholder="Оставить комментарий" value="Оставить комментарий" required></textarea>
                                </div>
                                <input type="hidden" name="article_id" value="{{$article->id}}">
                                <input type="hidden" name="user_id" value="{{ Auth::id() }}">
                            </div>
                            <button type="submit" class="btn send-btn">Оставить комментарий</button>
                        </form>


                    </div>
                </div>

                <div class="col-sm-4">
                    @include('blog.partials.sidebar')
                </div>
    </div>
    </div>
    </div>

@endsection
