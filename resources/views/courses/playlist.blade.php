@extends('layouts.app')

@section('content')

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
        

@endsection