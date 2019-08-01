<label for="" style="margin-top: 30px">Статус</label>
<select class="form-control" name="published">
    @if (isset($article->id))
        <option value="0" @if ($article->published == 0) selected="" @endif>Не опубликовано</option>
        <option value="1" @if ($article->published == 1) selected="" @endif>Опубликовано</option>
    @else
        <option value="0">Не опубликовано</option>
        <option value="1">Опубликовано</option>
    @endif
</select>
<label for="" style="margin-top: 30px">Заголовок</label>
<input type="text" class="form-control" name="title" placeholder="Заголовок новости" value="{{$article->title ?? ""}}" required>

<label for="" style="margin-top: 30px">Slug (уникальное значение)</label>
<input type="text" class="form-control" name="slug" placeholder="Автоматическая генерация" value="{{$article->slug ?? ""}}" readonly>

<label for="" style="margin-top: 30px">Категория </label>
<select class="form-control" name="categories[]" multiple="">
    @include('blog.partials.categories', ['categories' => $categories])
</select>

<label for="" style="margin-top: 30px">Краткое описание</label>
<textarea class="form-control" name="short_description" id="short_description">{{$article->short_description ?? ""}}</textarea>

<label for="" style="margin-top: 30px">Полное описание</label>
<textarea class="form-control" name="description" id="description" required>{{$article->description ?? " "}}</textarea>

@isset($article->image)
<p>
<img src="/upload/images/{{$article->image ?? ''}}">
</p>
@endisset
<label for="image" style="margin-top: 30px">Картинка</label>

<input type="file"  id="image" name="image"  value="Выберите файл">
{{--<label style="margin-top: 30px">{{$article->image ?? ""}}</label>--}}

{{--<label for="" style="margin-top: 30px">Автор</label>--}}
{{--<input type="text" class="form-control" name="user_id" placeholder="{{$article->user_id ?? ""}}" value="" >--}}

<hr />

<input class="btn btn-primary" type="submit" value="Сохранить">
