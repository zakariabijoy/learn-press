@extends('layouts.app')

@section('content')

<div class="row">
    <div class="col-md-8 offset-md-2">
        <div class="card">
            <div class="card-body">

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

                <form method="POST" enctype="multipart/form-data">
                    @csrf

                    <div class="form-group">
                        <label for="name">Name:</label>
                        <input class="form-control" type="text" name="name">
                    </div>

                    <div class="form-group">
                        <label for="description">Description:</label>
                        <textarea class="form-control" name="description"  cols="30" rows="10"></textarea>
                    </div>

                    <div class="form-group">
                             <label for="price">Price:</label>
                        <input class="form-control" type="number" name="price">
                    </div>

                    <div class="form-group">
                             <label for="image">Image:</label>
                        <input class="" type="file" name="image">
                    </div>
                    <div class="form-group">
                        <label for="videos">Videos:</label>
                        <input class="" type="file" name="videos[]" multiple>
                    </div>

                    <input class="btn btn-primary" style="float:right" type="submit" name="Create Your Course">
                   
                </form>
            </div>
        </div>


    </div>

</div>


@endsection