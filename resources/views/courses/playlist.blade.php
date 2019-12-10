@extends('layouts.app')

@section('content')

@if($errors->any())
    <div class="alert alert-danger">
        @foreach($errors->all() as $error)
            <li>{{$error}}</li>
        @endforeach
    </div>
 @endif
@if(session('success'))
    <div class="alert alert-success">
        <p>{{session('success')}}</p>
    </div>
@endif

        <div class="row">
            
                @foreach($videos as $video)
                <div class="card col-md-3 mr-lg-3">
                    <div class="card-body">
                        <video width="100%" height="100%" controls>
                            <source src="/storage/videos/{{$video->file_name}}" type="video/mp4">
                            
                        </video>
                    </div>
                    <div class="card-title text-center">
                        <strong >{{$video->file_name}}</strong>
                    </div>
                </div>
                @endforeach
            
        </div>

        <div class="row">
            <div class="card col-md-12 mt-3">
                <div class="card-body">
                    <form action="{{route('courses.comment',$course_id)}}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="comment">Comment:</label>
                            <textarea class="form-control" name="comment" cols="30" rows="10"></textarea>
                        </div>
                        <input class="btn btn-primary"  type="submit" value="Comment">
                    </form>
                    <div>
                        <h2>Comments</h2>
                    <ul class="list-group">
                    @foreach($comments as $comment)
                        <li class="list-group-item card">
                            <strong>{{$comment->user->name}}</strong>
                            <p class="mt-1">{{$comment->comment}}</p>
                        </li>
                    
                        
                    @endforeach
                    </ul>
                    </div>
                </div>     
            </div>
        </div>
        

@endsection