<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Course;
use App\User;
use App\Notifications\NewCourseAdded;


class CourseController extends Controller
{
   
    public function createForm(){
        return view('courses.create');
    }

    public function store(Request $request){
        $request->validate([
            'name' => 'required|max:150',
            'description' => 'required',
            'price' => 'required|numeric',
            'image' => 'required|mimes:jpeg,jpg,bmp,png|max:2048'

        ],[
            'image.max' => "this image may not be greater than 2 mb"
        ]);

        $fileName = $request->file('image')->getClientOriginalName();
         $request->file('image')->storeAs("/public/image",$fileName);

        Course::create([
            'name' => $request->input('name'),
            'description' => $request->input('description'),
            'price' => $request->input('price'),
            'image' => $fileName,
            'author_id' => auth()->user()->id

        ]);

        $users = User::where("id", "!=", auth()->user()->id)->get();

        foreach ($users as $user) {
            $user->notify(new NewCourseAdded);
        }
            return back()->with('success', 'Course Created');
        
    }
}
