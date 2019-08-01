<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Article;
use Faker\Generator as Faker;

$factory->define(Article::class, function (Faker $faker) {
    $title = $faker->sentence(rand(2,6), true);
    $txtdesc = $faker->realText(rand(500, 2000));
    $slug = str_slug($title);
    $txtshort = $faker->realText(rand(10, 100));
    $published = rand(1,5)>1;
    $userid = rand(1,3);


 $data = [
     'title' => $title,
     'slug' => $slug,
     'short_description' => $txtshort,
     'description' => $txtdesc,
     'published' => $published,
     'user_id' => $userid,
 ];
 return $data;
});
