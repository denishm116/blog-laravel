
@if($errors)


            @foreach($errors->all() as $error)
            <div class="alert alert-danger">
            <ul>
            <li>{{$error}}</li>
            </ul>
            </div>
                @endforeach



    @endif
<div class="form-group">
<label for="" style="margin-top: 30px">Имя</label>
<input type="text" class="form-control" name="name" value="@if(old('name')){{old('name')}}@else{{$user->name ?? ""}}@endif" required>

<label for="" style="margin-top: 30px">E-mail</label>
<input type="email" class="form-control" name="email" value="@if(old('email')){{old('email')}}@else{{$user->email ?? ""}}@endif" required>

<label for="" style="margin-top: 30px">Пароль</label>
<input type="password" class="form-control" name="password">

<label for="" style="margin-top: 30px">Повторите Пароль</label>
<input type="password" class="form-control" name="password_confirmation">




<label for="" style="margin-top: 30px">Роль</label>
<select class="form-control" name="role_id">
    @if (isset($user->roles))
        <option value="1" @if ($user->roles->first()->name == 'admin' ) selected="" @endif>Администратор</option>
        <option value="2" @if ($user->roles->first()->name == 'author') selected="" @endif>Автор</option>
        <option value="3" @if ($user->roles->first()->name == 'user') selected="" @endif>Читатель</option>
    @else
        <option value="1" >Администратор</option>
        <option value="2" selected>Автор</option>
        <option value="3">Читатель</option>
    @endif
</select>
</div>
<div class="form-group d-flex flex-column">
    @if (isset($user->image))
<img src="/upload/avatars/{{$user->image}}" width="200">
    @endif
    <label for="image">Аватар</label>
<input type="file"  name="image" class="py-2">
{{--    <div>{{$errors->first}}</div>--}}
</div>
{{--<label for="" style="margin-top: 30px">Автор</label>--}}
{{--<input type="text" class="form-control" name="user_id" placeholder="{{$article->user_id ?? ""}}" value="" >--}}

<hr />

<input class="btn btn-primary" type="submit" value="Сохранить">
