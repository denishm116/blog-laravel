<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Article;
use App\Comment;
use Auth;


class CommentController extends Controller
{
    public function create(Request $request) {

        $comment = new Comment();

            if ($request->user()->can('create', $comment)) {
                $slug = Article::where('id', $request->article_id)->pluck('slug')->first();
                Comment::create($request->all());
                return redirect()->route('article', $slug);
            }
    }


}
