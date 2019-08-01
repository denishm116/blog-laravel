
@foreach($answers as $answer)
@if($answer->comment_id == $comment->id)
@foreach($users as $user)
@if($user->id == $answer->user_id)
<div class="single-comment single-comment-reply">
    <div class="media">
        <div class="media-left text-center">

            <a href="#"> <img class="media-object" src="/upload/avatars/{{$user->image}}" width="50" alt=""></a>

        </div>
        <div class="media-body">
            <div class="media-heading">
                <h3 class="text-uppercase"><a href="#">{{$user->name}}</a></h3>
            </div>
            <p class="comment-date">
                {{$answer->created_at}}
            </p>
            <p class="comment-p">
                {{$answer->content}}
            </p>
        </div>
    </div>
</div>
@endif
@endforeach
@endif
@endforeach
