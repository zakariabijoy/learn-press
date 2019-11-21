<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Course;

class CourseController extends Controller
{
    public function createForm(){
        return view('courses.create');
    }

    public function store(Request $request){
        $request->validate([
            'name' => 'required|max:150',
            'description' => 'required',
            'price' => 'required|numeric'

        ]);

        Course::create([
            'name' => $request->input('name'),
            'description' => $request->input('description'),
            'price' => $request->input('price'),
            'image' => '/image',
            'author_id' => auth()->user()->id

        ]);
            return back()->with('success', 'Course Created');
        
    }
}
