@extends('layout')

@section('title', 'My Profile')

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')
<style type="text/css">
    ul li{
        list-style: none;
    }

    a{
        color: black;
    }
    a:hover{
        color: black;
    }

    

.fufu{
    background-color: whitesmoke;
    padding: 20px;
}

</style>

        


    <div class="container fufu">
         <a href="/">Home</a>
        /
        <span>MyAccount</span>


        <div class="row">

            <div class="col-lg-8">
                <div class="card card-primary card-outline">
                    <div class="card-body box-profile">

                @if (session()->has('success_message'))
                    <div class="alert alert-success">
                        {{ session()->get('success_message') }}
                    </div>
                @endif

                @if(count($errors) > 0)
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                 <form action="{{ route('users.update') }}" method="POST">
                    @method('patch')
                    @csrf
                  <div class="form-group">
                        <input id="name" type="text" name="name" value="{{ old('name', $user->name) }}" placeholder="Name" class="form-control" required>
                  </div>

                  <div class="form-group">
                        <input id="email" type="email" name="email" value="{{ old('email', $user->email) }}" placeholder="Email" class="form-control" required>
                  </div>

                  <div class="form-group">
                        <input id="password" type="password" name="password" placeholder="Password" class="form-control">
                  </div>

                  <div class="form-group">
                        <input id="password-confirm" type="password" name="password_confirmation" placeholder="Confirm Password" class="form-control">
                  </div>
                 
                  <button type="submit" class="btn btn-dark btn-lg btn-block">Update</button>
                </form>
            </div>
            </div>
            </div>

            <div class="col-lg-4">
                <div class="card card-primary card-outline">
                    <div class="card-body box-profile">
                <ul class="nav flex-column">
              <li class="nav-item active"><a href="{{ route('users.edit') }}" class="nav-link">My Profile</a></li>
             
              <li class="nav-item"><a href="{{ route('orders.index') }}" class="nav-link">My Orders</a></li>
             
                </ul>
            </div>
        </div>
            </div>
        </div>
    </div>

    <div style="height: 390px;"></div>

@endsection

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
