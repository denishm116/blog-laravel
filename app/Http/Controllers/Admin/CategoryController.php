<?php

namespace App\Http\Controllers\Admin;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{

    public function index()
    {

        return view('admin.category.index', [
            'categories' => Category::with('children')->paginate(100)
        ]);
    }


    public function create()
    {
        return view('admin.category.create', [
            'article' => [],

            'categories' => Category::with('children')->where('parent_id', '0')->get(),
            'delimiter' => ' ',
        ]);
    }


    public function store(Request $request)
    {
        Category::create($request->all());
        return redirect()->route('admin.category.index');
    }


    public function show(Category $category)
    {
        //
    }


    public function edit(Category $category)
    {
//        $cat = new Category();
//dd($cat->ifchildren());
        return view('admin.category.edit', [
            'category' => $category,
            'categories' => Category::with('children')->where('parent_id', '0')->get(),
            'delimiter' => ' ',
        ]);
    }


    public function update(Request $request, Category $category)
    {

    $category->update($request->except('slug'));
        return redirect()->route('admin.category.index');
    }


    public function destroy(Category $category)
    {
//        if($request->input()['parent_id'] != $category->parent_id) {
//    echo "You cant delit mother category";
//    die;
//        }
        if($category->children()->count())
        {
            echo "You cant delete mother category";
            return redirect()->route('admin.category.index');
        }
//        dd($category->children()->first());

       $category->delete();
        return redirect()->route('admin.category.index');
    }
}
