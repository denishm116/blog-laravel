<?php

namespace App\Http\Controllers;

use App\Role;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Article;
class HomeController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }


    public function index()
    {
        $articles = Article::with('categories')->get();
        $user = Auth::user();

        return view('blog.home', compact('articles','user'));
    }

}
