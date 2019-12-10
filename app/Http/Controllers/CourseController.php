<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Course;
use App\Video;
use App\User;
use App\Comment;
use App\Notifications\NewCourseAdded;
use Illuminate\Support\Facades\Cache;




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
            'image' => 'required|mimes:jpeg,jpg,bmp,png|max:2048',
            'videos.*' => 'required|mimes:mp4,3gpp|max:200000'


        ],[
            'image.max' => "this image may not be greater than 2 mb",
            'videos.max' => "this image may not be greater than 200 mb"

        ]);

        

        $fileName = $request->file('image')->getClientOriginalName();
         $request->file('image')->storeAs("/public/image",$fileName);

        $courses = Course::create([
            'name' => $request->input('name'),
            'description' => $request->input('description'),
            'price' => $request->input('price'),
            'image' => $fileName,
            'author_id' => auth()->user()->id

        ]);

        foreach ($request->file('videos') as $file ) {
            $fileName = $file->getClientOriginalName();

            $file->storeAs("/public/videos",$fileName);

            //database insert

            Video::create([
                'course_id' => $courses->id,
                'file_name' =>$fileName
            ]);
        }

        cache::clear();

        $users = User::where("id", "!=", auth()->user()->id)->get();

        foreach ($users as $user) {
            $user->notify(new NewCourseAdded);
        }
            return back()->with('success', 'Course Created');
        
    }



    public  function list(){

        $page= request()->input('page');

        $courses= Cache::remember('courses.list'.$page, 60, function(){
            return Course::paginate(9);
        });

       // $courses= Course::paginate(2);

        return view('courses.list', compact('courses'));
    }


    public function showPlaylist($course_id){

        $user = auth()->user();
        $course = $user->courses()->whereId($course_id)->firstOrFail();

        $videos = Video::where("course_id","=",$course_id)->get();

        $comments = Comment::where("course_id","=",$course_id)->orderBy('id', 'DESC')->get();

        return view('courses.playlist', compact('videos','comments'),['course_id'=>$course_id]);

    }

    public function enroll($id){


        $course = Course::findOrFail($id);

        $course->users()->attach(auth()->user()->id);

        return redirect()->route('courses.playlist',$id)->with('success', "you are successfully enrolled  for this course ");
       //  return view('courses.enroll');
       
    }

    public function comment(Request $request,$id){
        $request->validate([
            'comment'=>'required'
        ]);

        Comment::create([
            'comment'=> $request->input('comment'),
            'user_id'=>auth()->user()->id,
            'course_id'=>$id

        ]);

        return back()->with('success',"your comment id added");
    }

//   public function commentShow(){
//       $comments = Course::find()->comments;

//       return back()->with(compact('comments'));
//   }
}
