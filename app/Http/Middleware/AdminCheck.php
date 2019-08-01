<?php

namespace App\Http\Middleware;

use App\User;
use Closure;
use Illuminate\Routing\Route;


class AdminCheck
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
        {
           if (!(auth()->user()->roles->pluck('name')->contains('admin')))
           {
              return redirect('/');
           }

        return $next($request);
    }
}
