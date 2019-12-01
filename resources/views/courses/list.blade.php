@extends('layouts.app')

@section('content')

    <div class="row">
        @foreach($courses as $course)
        <div class="col-md-4">
        <div class = "card"   >
            <img  src="/storage/image/{{$course->image}}" class="card-img-top" alt="...">

            <div class="card-body">
                
                <h5 class="card-title">{{$course->name}}</h5>
                <p class="card-text">{{$course->description}}</p>
                
            </div>

        </div>
        </div>
        @endforeach
    </div>
    {{$courses->links()}}

@endsection