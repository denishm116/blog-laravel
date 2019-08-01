@forelse($comments as $comment)
    @if($article->id == $comment->article_id)
        @foreach($users as $user)
            @if($user->id == $comment->user_id)


                <div class="single-comment">
                    <div class="media">

                        <div class="media-left text-center">
                            <a href="#"><img class="img-thumbnail" width="50" src="/upload/avatars/{{$user->image}}" alt=""></a>
                        </div>

                        <div class="media-body">
                            <div class="media-heading">
                                <h3 class="text-uppercase">
                                    <a href="#">{{$user->name}}</a>
                                    @auth
                                    @if(Auth::id() == $article->user_id || Auth::user()->roles->first()->name == 'admin')
                                    <a href="{{route('reply', $comment->id)}}" class="pull-right reply-btn">reply</a>
                                    @endif
                                    @endauth

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
            @endif
        @endforeach
                @include('partials.answers')

            @endif



            @empty
    Нет комментариев
    @endforelse

