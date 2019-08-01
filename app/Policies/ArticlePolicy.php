<?php

namespace App\Policies;

use App\User;
use App\Article;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Support\Facades\Auth;

class ArticlePolicy
{
    use HandlesAuthorization;
    
    /**
     * Determine whether the user can view any articles.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        //
    }

    /**
     * Determine whether the user can view the article.
     *
     * @param  \App\User  $user
     * @param  \App\Article  $article
     * @return mixed
     */
    public function view(User $user, Article $article)
    {
        return true;
    }

    /**
     * Determine whether the user can create articles.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        foreach ($user->roles as $role)
        {
            if ($role->name == 'author')
            {
                return true;
            }
        }
    }

    public function before (User $user) {
        foreach ($user->roles as $role)
        {
            if ($role->name == 'admin')
            {
                return true;
            }
         }

        }
    /**
     * Determine whether the user can update the article.
     *
     * @param  \App\User  $user
     * @param  \App\Article  $article
     * @return mixed
     */
    public function update(?User $user, Article $article)
    {
//        $user = Auth::user();
        foreach ($user->roles as $role) {
            if ($role->name == 'author') {
                if($user->id == $article->user_id) {
                    return true;
                }
            } else {
                echo "У вас недостаточно прав";
                return false;
            }
        }
//        dd($user);
        return $user->id === $article->user_id;
    }

    /**
     * Determine whether the user can delete the article.
     *
     * @param  \App\User  $user
     * @param  \App\Article  $article
     * @return mixed
     */
    public function delete(User $user, Article $article)
    {

        foreach ($user->roles as $role) {
            if ($role->name == 'author') {
                if($user->id == $article->user-id) {
                    return true;
                }
            } else {
                echo "У вас недостаточно прав";
            }

        }
    }

    /**
     * Determine whether the user can restore the article.
     *
     * @param  \App\User  $user
     * @param  \App\Article  $article
     * @return mixed
     */
    public function restore(User $user, Article $article)
    {
        //
    }

    /**
     * Determine whether the user can permanently delete the article.
     *
     * @param  \App\User  $user
     * @param  \App\Article  $article
     * @return mixed
     */
    public function forceDelete(User $user, Article $article)
    {
        //
    }


}
