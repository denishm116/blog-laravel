<?php

namespace App\Http\Controllers\Admin;

use App\Article;
use App\User;
use Illuminate\Http\Request;
use App\Category;
use App\Http\Controllers\Controller;
use Image;
class ArticleController extends Controller
{

    public function index()
    {
        return view('admin.articles.index', [

            'articles' => Article::with('categories')->paginate(10)


        ]);
    }


    public function create()
    {
        return view('admin.articles.create', [
            'article' => [],
            'categories' => Category::with('children')->where('parent_id', 0)->get(),
            'delimiter' => ''

        ]);
    }


    public function store(Request $request)
    {

        $request->input('categories');
        $arr = collect($request->all())->except(['categories'])->all();

        $article = Article::create($arr);
            if($request->input('categories')) :
                $article->categories()->attach($request->input('categories'));
            endif;
        return redirect()->route('admin.article.index')->with(['message'=>'Статья добавлена']);
//        return redirect()->back()->with(['message'=>'Статья добавлена']);
    }

    public function show(Article $article)
    {
        //
    }


    public function edit(Article $article)
    {

        return view('admin.articles.edit', [
            'article' => $article,
            'categories' => Category::with('children')->where('parent_id', 0)->get(),
            'user' => Article::with('user')->get(),
            'delimiter' => '',

        ]);
    }


    public function update(Request $request, Article $article)
    {
//        $article = Article::with('categories')->where('id', $request->article_id)->first();
        if($request->hasFile('image')) {
            $request->validate([
                'image' => ['file', 'image', 'max:5000'],
            ]);
            $extension = $request->file('image')->getClientOriginalExtension();
            $filename = md5(microtime() . rand(0, 9999)) . '.' . $extension;
            Image::make($request->file('image'))->save('upload/images/' . $filename);
        }

        else {
            $filename = 'default.jpg';
        }

        $arr = collect($request->except('slug'))->except(['categories'])->all();
        $arr['image'] = $filename;
//        dd($arr);
//        dd($request->file());
        $article->update($arr);
        $article->categories()->detach();
        if($request->input('categories')) :
             $article->categories()->attach($request->input('categories'));
        endif;

        return redirect()->route('admin.article.index');
    }

    public function destroy(Article $article)
    {


        $article->categories()->detach();
        $article->delete();

        return redirect()->route('admin.article.index');
    }
}
