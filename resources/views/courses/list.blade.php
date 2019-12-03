@extends('layouts.app')

@section('content')

    <div class="row">
        @foreach($courses as $course)
        <div class="col-md-4 ">
            <a href="{{route('courses.playlist')}}" class="nav-link">
        <div class = "card" >
            
            <img height=150 src="/storage/image/{{$course->image}}" class="card-img-top" alt="...">

            <div class="card-body">
                
                <h5 class="card-title">{{$course->name}}</h5>
                <p class="card-text">{{$course->description}}</p>
                
            </div>

        </div>
        </a>
        </div>
        @endforeach
    </div>
    {{$courses->links()}}

@endsection