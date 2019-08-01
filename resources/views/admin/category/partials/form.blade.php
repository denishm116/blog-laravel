<label for="" style="margin-top: 30px">Статус</label>
<select class="form-control" name="published">
    @if (isset($category->id))
        <option value="0" @if ($category->published == 0) selected="" @endif>Не опубликовано</option>
        <option value="1" @if ($category->published == 1) selected="" @endif>Опубликовано</option>
    @else
        <option value="0">Не опубликовано</option>
        <option value="1">Опубликовано</option>
    @endif
</select>

<label for="" style="margin-top: 30px">Наименование</label>
<input type="text" class="form-control" name="title" placeholder="Заголовок категории" value="{{$category->title ?? " "}}" required>

<label for="" style="margin-top: 30px">Slug</label>
<input class="form-control" type="text" name="slug" placeholder="Автоматическая генерация" value="{{$category->slug ?? " "}}" readonly="">

<label for="" style="margin-top: 30px">Родительская категория</label>
<select class="form-control" name="parent_id">
    <option value="0">-- без родительской категории --</option>

    @include('admin.category.partials.categories', ['categories' => $categories])
</select>

<hr />

<input class="btn btn-primary" type="submit" value="Сохранить">
