<?php

namespace App\Http\Controllers;

use App\Article;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Comment;
use App\Answer;


class AnswerController extends Controller
{
    public function create($comment_id) {

            $user = User::all()->where('id', $comment_id)->first();

            $comment = Comment::with('article')->where('id', $comment_id)->first();

            $art = $comment->pluck('article_id')->first();

            $article = Article::all()->where('id',$art)->first();


        return view('blog.comments.reply.reply', ['user' => $user, 'comment' => $comment, 'article' => $article]);


    }

    public function store(Request $request) {
        Answer::create($request->all());
        return redirect()->route('home');

    }
}
