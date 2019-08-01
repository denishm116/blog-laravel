<?php

namespace App\Http\Controllers\Admin;

use App\Article;
use App\Category;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function dashboard() {

        $authors = [];
        $users = User::with('roles')->get();
        foreach ($users as $user) {
            foreach ($user->roles as $us) {
                if($us->name == 'author') {
                    $authors[] = $user->name;
                }
            }
        }
//        dd(count($authors));

        return view('admin.dashboard', [
            'categories' =>Category::lastCategories(5),
            'articles' =>Article::lastArticles(5),
            'cat' => Category::count(),
            'cat' => Category::count(),
            'art' => Article::count(),
            'users' => User::all()->count(),
            'authors' => count($authors),
        ]);
    }
}
