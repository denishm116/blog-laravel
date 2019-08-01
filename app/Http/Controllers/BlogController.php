<?php

namespace App\Http\Controllers;
use App\Category;
use App\Article;
use App\Comment;

use App\Event\onShow;
//use Illuminate\Console\Scheduling\Event;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\Answer;
use Illuminate\Http\Request;
use Gate;
use Event;
use Image;

class BlogController extends Controller
{
    public function index()
    {
        $articles = Article::with('categories')->paginate(5);
        return view('blog.home', [
            'articles'=>$articles,
            'user'=>Auth::user(),
            'poparticles'=>Article::popularArticles(3),
            'lastarticles'=>Article::lastArticles(3),
            ]);

    }

    public function category($slug)
    {
    $category = Category::where('slug', $slug)->first();
    return view('category', [
        'category' => $category,
        'articles' => $category->articles()->get(),
        'user'=>Auth::user(),
    ]);
    }

    public function article($slug)
    {

        $article = Article::all()->where('slug', $slug )->first();
        $art = view('article', [
            'article' => Article::with('categories')->where('slug', $slug)->first(),
            'users'=>User::with('comments')->get(),
            'comments' => Comment::with('article')->get(),
            'answers'=>Answer::with('comment')->get(),
            'poparticles'=>Article::popularArticles(3),
            'lastarticles'=>Article::lastArticles(3),
            'user'=>Auth::user(),
        ]);

        event(new onShow($article));
        return $art;

    }

    public function ajaxTest($slug) {

        $article = Article::all()->where('slug', $slug )->first();
        $article['like'] = $article->reactionSummary();
        $article['checker'] = $article->is_reacted;


        return $article;
    }


    public function toggle($slug) {
        $article = Article::with('categories')->where('slug', $slug)->first();

        $article->toggleReaction('like');
        $article['checker'] = $this->ajaxTest($slug)->$article['checker'];
        return $article->reactionSummary();
    }

    public function addpost()
    {

        if(Gate::allows('create', Article::class))
        {
            return view('blog.addpost', [
                'categories' => Category::with('children')->get(),
                'delimiter' => '',
                'article' => [],
                ])->with('message', 'Сатья добавлена');
        } else {
            return redirect()->back()->with('message', 'У вас нет прав');
        }
    }

    public function savepost(Request $request)
    {
        $request->input('categories');

        $arr = collect($request->all())->except(['categories'])->all();

        if($request->hasFile('image')) {
            $request->validate([
                'image'=> ['file', 'image', 'max:5000'],
            ]);
            $extension = $request->file('image')->getClientOriginalExtension();
            $filename = md5(microtime() . rand(0, 9999)).'.'.$extension;
            Image::make($request->file('image'))->save('upload/images/'.$filename);
        }

        else {
            $filename = 'default.jpg';
        }
        $arr['image'] = $filename;
        $article = Article::create($arr);

        if($request->input('categories')) :
            $article->categories()->attach($request->input('categories'));
        endif;
        return redirect()->route('admin.article.index');
    }

    public function editpost($slug)
    {
        $user = Auth::user();
        $article = Article::with('categories')->where('slug', $slug)->first();
        if($user->can('update', $article)) {

            return view('blog.editpost', [
                'article' => $article,
                'categories' => Category::with('children')->where('parent_id', 0)->get(),
                'delimiter' => '',
            ]);
        } else {
            echo "Как ты сюда залез?";
        }
        }

    public function update(Request $request)
    {

        $article = Article::with('categories')->where('id', $request->article_id)->first();
//        dd($request->all());

             if ($request->hasFile('image')) {
                 $request->validate([
                     'image' => ['file', 'image', 'max:5000'],
                 ]);
                 $extension = $request->file('image')->getClientOriginalExtension();
                 $filename = md5(microtime() . rand(0, 9999)) . '.' . $extension;
                 Image::make($request->file('image'))->save('upload/images/' . $filename);
             } else {
                 $filename = 'default.jpg';
             }

             $arr = collect($request->except('article_id'))->except(['categories'])->all();
             $arr['image'] = $filename;
             $article->update($arr);

             $article->categories()->detach();
             if ($request->input('categories')) :
                 $article->categories()->attach($request->input('categories'));
             endif;
//        event(new onShow($article));
//dd($article);
        return redirect()->route('article', [$article->slug, $article->tiile]);


    }

    public function deletepost($slug)
    {
        if(Gate::allows('update', Article::class)) {
            $article = Article::with('categories')->where('slug', $slug)->first();

            unlink(public_path('upload/images/'.$article->image));
            $article->categories()->detach();
            $article->delete();
        }
        else {
            return redirect()->route('home');
        }
    }




}
