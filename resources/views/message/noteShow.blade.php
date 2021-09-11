@extends('layouts.base')
@section('content')

        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-sm-12 col-md-10 col-lg-8 col-xl-12">
                <div class="card">
                    <div class="card-header">
                      <i class="fa fa-align-justify"></i> Note: {{ $note->title }}</div>
                    <div class="card-body">
                        <br>
                        <h4>Author:</h4>
                        <p> {{ $note->user->name }}</p>
                        <h4>Title:</h4>
                        <p> {{ $note->title }}</p>
                        <h4>Content:</h4> 
                        <p>{{ $note->content }}</p>
                        <h4>Applies to date:</h4> 
                        <p>{{ $note->applies_to_date }}</p>
                        <h4> Status: </h4>
                        <p>
                            <span class="{{ $note->status->class }}">
                              {{ $note->status->name }}
                            </span>
                        </p>
                        <h4>Note type:</h4>
                        <p>{{ $note->note_type }}</p>
                        <a class="btn btn-dark" href="{{ route('message.index') }}">Return</a>
                      </div>
                </div>
              </div>
            </div>
          </div>
        </div>

@endsection


@section('javascript')

@endsection