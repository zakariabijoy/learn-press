@extends('layouts.app')

@section('content')

        <div class=row>
        @foreach($videos as $video)
    
         
            <div class="col-md-8 offset-2">
                <div class="card mt-2">
                    <a href="/storage/videos/{{$video->file_name}}">
                    <div class="card-title">
                        <h5>{{$video->file_name}}</h5>
                    </div>
                    </a>
                </div>
            </div>
          
            
        <video width="320" height="240" control hidden>
         <source src="/storage/videos/{{$video->file_name}}" type="video/mp4">
        </video>
           

   

        @endforeach
        </div>  


@endsection