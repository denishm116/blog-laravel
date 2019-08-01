@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>Ответ на комментарий к сататье " {{$article->title}} "</h1>
    </div>
    <div class="kotha-default-content">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <article class="single-blog">
                        <div class="post-thumb">
                            <img src="/assets/images/post-thumb-1.jpg" alt="">
                        </div>
                        <div class="post-content">
                            <div class="entry-header text-center text-uppercase">



                                <h2>{{$article->title}}</h2>
                            </div>
                            <div class="entry-content">
                                <p>{{$article->description}}
                                </p>
                            </div>

                            <div class="post-meta">
                                <ul class="pull-left list-inline author-meta">
                                    <li class="author">By <a href="#">{{$article->user->name}} </a></li>
                                    <li class="date">{{$article->created_at}}</li>
                                </ul>
                                <ul class="pull-right list-inline social-share">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </article>



                    <div class="comment-area">
                        <div class="comment-heading">
                            <h3>Ответить на этот комментарий</h3>
                        </div>
                        <div class="single-comment">
                            <div class="media">
                                <div class="media-left text-center">
                                    <a href="#"><img class="media-object" src="/assets/images/reply-1.jpg" alt=""></a>
                                </div>
                                <div class="media-body">
                                    <div class="media-heading">
                                        <h3 class="text-uppercase">
                                            <a href="#">{{$article->user->name}}</a>

                                        </h3>
                                    </div>
                                    <p class="comment-date">
                                        {{$comment->created_at}}
                                    </p>
                                    <p class="comment-p">
                                       {{$comment->content}}
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>



    <div class="leave-comment">
        <h4>Оставить ответ</h4>
        <form class="form-horizontal contact-form"  method="post" action="{{route('answer')}}">
            @csrf

            <div class="form-group">
                <div class="col-md-12">
                    <textarea class="form-control" rows="6" name="content" placeholder="Оставить комментарий" value="Оставить комментарий" required></textarea>
                </div>
<input type="hidden" name="user_id" value="{{$article->user->id}}">
<input type="hidden" name="comment_id" value="{{$comment->id}}">
            </div>
            <button type="submit" class="btn send-btn">Отправить</button>
        </form>
    </div>
                </div></div></div></div>
@endsection
