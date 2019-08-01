<?php

namespace App\Providers;

use App\Article;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class BlogServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        $this->topMenu();
    }

    public function topMenu()
    {
        View::composer('layouts.header', function ($view)
        {
            $view->with('categories', \App\Category::where('parent_id', 0)->where('published', 1)->get());
            $view->with('user', Auth::user());
//            $view->with('article', Article::where('user_id', Auth::id()));
        }
        );
    }
}
