<?php

namespace App\Listeners;

use App\Article;
use App\Event\onShow;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class EventListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  onShow  $event
     * @return void
     */
    public function handle(onShow $event)
    {
       $article =  Article::all()->where('slug', $event->article_slug)->first();
       if($article->viewed == null || $article->viewed == 0) {
           $article->viewed = 1;
       } else {$article->viewed += 1;}

       $article->save();
    }
}
