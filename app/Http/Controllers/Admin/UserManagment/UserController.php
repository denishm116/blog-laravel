<?php

namespace App\Http\Controllers\Admin\UserManagment;

use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Storage;
//use Intervention\Image\Image;
use Image;


class UserController extends Controller
{

    public function index()
    {
        return view('admin.user_managment.users.index', [
       'users' => User::with('roles')->get()
    ]);
    }

    public function create()
    {
        return view('admin.user_managment.users.create');
    }

    public function store(Request $request)
    {
        if($request->hasFile('image')) {
            $request->validate([
                'image'=> ['file', 'image', 'max:5000'],
                ]);

            $extension = $request->file('image')->getClientOriginalExtension();
            $filename = md5(microtime() . rand(0, 9999)).'.'.$extension;

            Image::make($request->file('image'))->save('upload/avatars/'.$filename);
        }

        else {
            $filename = 'default.jpg';
        }

       $validator = $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],

        ]);
       $user = User::create([
           'name' => $request['name'],
           'email' => $request['email'],
           'password' => bcrypt($request['password']),
           'image' => $filename,
       ]);

       $user->roles()->attach($request->input('role_id'));
       return redirect()->route('admin.user_managment.user.index');
    }

    public function show(User $user)
    {
        //
    }


    public function edit(User $user)
    {
      return view('admin.user_managment.users.edit', ['user' => $user]);
    }


    public function update(Request $request, User $user)
    {
        if($request->hasFile('image')) {
            $request->validate([
                'image' => ['file', 'image', 'max:5000'],
            ]);
            $extension = $request->file('image')->getClientOriginalExtension();
            $filename = md5(microtime() . rand(0, 9999)) . '.' . $extension;
            Image::make($request->file('image'))->save('upload/avatars/' . $filename);
        }

        else {
            $filename = 'default.jpg';
        }

        $validator = $request->validate([
            'name' => 'required|string|max:255',
            'email' => [
                'required',
                'string',
                'email',
                'max:255',
                \Illuminate\Validation\Rule::unique('users')->ignore($user->id),
            ],
            'password' => 'nullable|string|min:8|confirmed',
        ]);

        $user->name = $request['name'];
        $user->email = $request['email'];
        $request['password'] == null ?: $user->password = bcrypt($request['password']);
        $user->image = $filename;
        $user->save();

        $user->roles()->detach();
        $user->roles()->attach($request->input('role_id'));
        return redirect()->route('admin.user_managment.user.index');

    }


    public function destroy(User $user)
    {

        unlink(public_path('upload/avatars/'.$user->image));
        $user->roles()->detach();

        $user->delete();

        return redirect()->route('admin.user_managment.user.index');
    }
}
