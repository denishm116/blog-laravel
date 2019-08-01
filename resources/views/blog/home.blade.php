@extends('layouts.app')
@section('title', 'Жилье для отдыхающих в ейске, гостиницы, частный сектор')
@section('content')

    <div class="container">
        <div class="row text-center">
<div class="col">
            <h1 class=" text-uppercase">Жилье для отдыхающих в Ейске, гостиницы, частный сектор.</h1></div>
        </div>

        <div>

            <h2 class="text-center text-uppercase">Оставляйте свои впечатления о жилье в Ейске.</h2>

        </div>
    <div class="kotha-default-content">


        </div>
        <div class="container">
            <div class="row">


                <div class="col-sm-8">
                    @forelse($articles as $article)
                    <article class="single-blog">
                        <div class="post-thumb">
                            <a href="#"><img src="/upload/images/{{$article->image}}" alt=""></a>
                        </div>
                        <div class="post-content">
                            <div class="entry-header text-center text-uppercase">

                                @foreach($article->categories as $cat)
                                <a href="{{route('category', $cat->slug)}}" class="post-cat">{{$cat->title}}</a>
                                @endforeach

                                <h2><a href="{{route('article', $article->slug)}}">{{$article->title}}</a></h2>
                            </div>
                            <div class="entry-content">
                                <p>{{$article->description}}</p>
                            </div>
                            <div class="continue-reading text-center text-uppercase">
                                <a href="{{route('article', $article->slug)}}">Continue Reading</a>
                            </div>
                            <div class="post-meta">
                                <ul class="pull-left list-inline author-meta">
                                    <li class="author">By <a href="#">{{$article->user->name}} </a></li>
                                    <li class="date"> {{$article->created_at}}</li>
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
                        @empty
                            <h2>Нет публикаций</h2>
                   @endforelse
                    <div class="post-pagination  clearfix">
                        {{$articles->links()}}
                    </div>
                </div>
                <div class="col-sm-4">
                  @include('blog.partials.sidebar')
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="footer-widget-row">
                <div class="footer-widget contact-widget">
                    <div class="widget-title">
                       <h3 class="uppercase">eysk.oteli-nomera.ru</h3>
                    </div>
                    <p>Ейск — курортный город у Азовского побережья, на юге России. Административный центр Ейского района и Ейского городского поселения Краснодарского края. Пятый по численности населения город края. Со дня основания является морским портом.

                        Город расположен у основания Ейской косы, между Таганрогским заливом и Ейским лиманом Азовского моря. Название города происходит от реки Ея, впадающей в Ейский лиман. Жителей города Ейска называют ейча́нами и ейча́нками. Город является одним из самых северных городов Краснодарского края и из-за этого получил неофициальный слоган «С Ейска начинается Кубань».</p>
                    <div class="address">
                        <h4 class="text-uppercase">Наш адрес</h4>
                        <p> г. Ейск, Краснодарский край</p>
                        <p><i class="fa fa-phone-square" aria-hidden="true"> </i> +7(953)075 24 24</p>
                        <a href="mailto:info@oteli-nomera.ru">info@oteli-nomera.ru</a>
                    </div>
                </div>
                <div class="footer-widget twitter-widget">
                    <h2 class="widget-title text-uppercase">
                        Социальные сети
                    </h2>
                    <div class="single-tweet">
                        <p>В скором времени здесь появятся ссылки на наши социальные сети. <br>
                            <a href="https://t.co/kN5OPEuPzx">https://t.co/kN5OPEuPzx</a></p>
                        <h4><i class="fa fa-twitter"></i>Tweeted on 17 hours ago</h4>
                    </div>
                    <div class="single-tweet">
                        <p>Check our new theme 'kotha - Personal WordPress Blog Theme' on #themeforest #Envato
                            #WordPress
                            <br>
                            <a href="https://t.co/kN5OPEuPzx">https://t.co/kN5OPEuPzx</a></p>
                        <h4><i class="fa fa-twitter"></i>Tweeted on 17 hours ago</h4>
                    </div>
                </div>

                <div class="footer-widget testimonial-widget">
                    <h2 class="widget-title text-uppercase">Отзывы о нас</h2>
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <!--Indicator-->
                        <ol class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                            <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">

                            <div class="item active">
                                <div class="single-review">
                                    <div class="review-text">
                                        <p>Отличный сайт. Классный блог.</p>
                                    </div>
                                    <div class="author-id">
                                        <img width="50" src="/upload/avatars/default.jpg" alt="">
                                        <div class="author-text">
                                            <h4>Robert Arri</h4>
                                            <h4>HRM, Microsoft Inc.</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid text-center ft-copyright">
            <p>&copy; 2019 <a href="#">oteli-nomera.ru</a> - Designed with <i class="fa fa-heart"></i> by <a
                    href="http://shapedtheme.com/">INDEX University</a></p>
        </div>
    </footer>
    <div class="scroll-up">
        <a href="#"><i class="fa fa-angle-up"></i></a>
    </div>
@endsection
