<div class="kotha-sidebar">
    <aside class="widget about-me-widget  text-center">
        <div class="about-me-content">
            <div class="about-me-img">

                @if($user)
                <img src="/upload/avatars/{{$user->image}}" alt="" class="img-me img-circle">
                <h2 class="text-uppercase">{{$user->name}}</h2>
                <p>{{$user->email}}</p>
                @foreach($user->roles as $roles)
                <p>{{$roles->name}}</p>
                @endforeach
                    @else
                    <img src="/assets/images/eysk.jpg" alt="" class="img-me img-circle">
                    <h2 class="text-uppercase">Добро пожаловать</h2>
                    <p>Зарегистрируйтесь и оставьте свои впечатления об отдыхе и о жилье для отдыхающих в Ейске!</p>

                @endif

            </div>
        </div>
        <div class="social-share">
            <ul class="list-inline">
                <li><a class="s-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a class="s-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a class="s-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                <li><a class="s-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                <li><a class="s-instagram" href="#"><i class="fa fa-instagram"></i></a></li>
            </ul>
        </div>
    </aside>
    <aside class="widget news-letter-widget">
        <h2 class="widget-title text-uppercase text-center">Get Newsletter</h2>
        <form action="#">
            <input type="email" placeholder="Your email address" required>
            <input type="submit" value="Subscribe Now"
                   class="text-uppercase text-center btn btn-subscribe">
        </form>
    </aside>
    <aside class="widget widget-popular-post">
        <h3 class="widget-title text-uppercase text-center">Самые популярные</h3>
        <ul>
            @foreach($poparticles as $pop)
            <li>
                <a href="#" class="popular-img"><img src="/upload/images/{{$pop->image}}" alt="">
                </a>
                <div class="p-content">
                    <h4><a href="#" class="text-uppercase">{{$pop->title}}</a></h4>
                    <div class="p-date"><i class="fa fa-eye"></i>{{$pop->viewed}}</div>
                    <span class="p-date">{{$pop->created_at}}</span>
                </div>
            </li>
           @endforeach
        </ul>
    </aside>
    <aside class="widget latest-post-widget">
        <h2 class="widget-title text-uppercase text-center">Последние добавленные</h2>
        <ul>
            @foreach ($lastarticles as $last)
            <li class="media">
                <div class="">
                    <a href="#" class="popular-img"><img width="100" src="/upload/images/{{$last->image}}" alt="">
                    </a>
                </div>
                <div class="latest-post-content">
                    <h2 class="text-uppercase"><a href="#">{{$last->title}}</a></h2>
                    <p>{{$last->created_at}}</p>
                </div>
            </li>
                @endforeach


        </ul>
    </aside>
    <aside class="widget insta-widget">
        <h2 class="widget-title text-uppercase text-center">INSTAGRAM FEED</h2>
        <div class="instagram-feed">
            <div class="single-instagram">
                <a href="#">
                    <img src="assets/images/ft-insta-1.jpg" alt="">
                </a>
                <div class="insta-overlay">
                    <div class="insta-meta">
                        <ul class="list-inline text-center">
                            <li><a href="#"><i class="fa fa-heart-o"></i></a> 325</li>
                            <li><a href="#"><i class="fa fa-comment-o"></i></a> 20</li>
                        </ul>
                    </div>
                </div>
                <a href="#" class="insta-link"></a>
            </div>
            <div class="single-instagram">
                <a href="#">
                    <img src="assets/images/ft-insta-6.jpg" alt="">
                </a>
                <div class="insta-overlay">
                    <div class="insta-meta">
                        <ul class="list-inline text-center">
                            <li><a href="#"><i class="fa fa-heart-o"></i></a> 325</li>
                            <li><a href="#"><i class="fa fa-comment-o"></i></a> 20</li>
                        </ul>
                    </div>
                </div>
                <a href="#" class="insta-link"></a>
            </div>
            <div class="single-instagram">
                <a href="#">
                    <img src="assets/images/ft-insta-4.jpg" alt="">
                </a>
                <div class="insta-overlay">
                    <div class="insta-meta">
                        <ul class="list-inline text-center">
                            <li><a href="#"><i class="fa fa-heart-o"></i></a> 325</li>
                            <li><a href="#"><i class="fa fa-comment-o"></i></a> 20</li>
                        </ul>
                    </div>
                </div>
                <a href="#" class="insta-link"></a>
            </div>
            <div class="single-instagram">
                <a href="#">
                    <img src="assets/images/ft-insta-3.jpg" alt="">
                </a>
                <div class="insta-overlay">
                    <div class="insta-meta">
                        <ul class="list-inline text-center">
                            <li><a href="#"><i class="fa fa-heart-o"></i></a> 325</li>
                            <li><a href="#"><i class="fa fa-comment-o"></i></a> 20</li>
                        </ul>
                    </div>
                </div>
                <a href="#" class="insta-link"></a>
            </div>
            <div class="single-instagram">
                <a href="#">
                    <img src="assets/images/ft-insta-7.jpg" alt="">
                </a>
                <div class="insta-overlay">
                    <div class="insta-meta">
                        <ul class="list-inline text-center">
                            <li><a href="#"><i class="fa fa-heart-o"></i></a> 325</li>
                            <li><a href="#"><i class="fa fa-comment-o"></i></a> 20</li>
                        </ul>
                    </div>
                </div>
                <a href="#" class="insta-link"></a>
            </div>
            <div class="single-instagram">
                <a href="#">
                    <img src="assets/images/ft-insta-8.jpg" alt="">
                </a>
                <div class="insta-overlay">
                    <div class="insta-meta">
                        <ul class="list-inline text-center">
                            <li><a href="#"><i class="fa fa-heart-o"></i></a> 325</li>
                            <li><a href="#"><i class="fa fa-comment-o"></i></a> 20</li>
                        </ul>
                    </div>
                </div>
                <a href="#" class="insta-link"></a>
            </div>
        </div>
    </aside>
    <aside class="widget add-widget">
        <h2 class="widget-title text-uppercase text-center">Advertisement</h2>

        <div class="add-image">
            <a href="#"><img src="assets/images/add-image.jpg" alt=""></a>
        </div>
    </aside>
</div>
