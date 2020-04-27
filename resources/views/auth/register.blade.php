@extends('layout')

@section('title', 'Sign Up for an Account')

@section('content')

<br><br>
<div class="container">
    <div class="row">
        <div class="col-lg-6 offset-3">
            <h2>YOUR ACCOUNT FOR EVERYTHING <br>
            ACTIVE SHOP</h2>

            @if (session()->has('success_message'))
            <div class="alert alert-success">
                {{ session()->get('success_message') }}
            </div>
            @endif @if(count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif

            
            <form method="POST" action="{{ route('register') }}">
                {{ csrf_field() }}

              <div class="form-group">
                
                <input type="text" class="form-control" id="name" name="name" value="{{ old('name') }}" placeholder="Name">
              </div>

              <div class="form-group">
                <input id="email" type="email" class="form-control" name="email" value="{{ old('email') }}" placeholder="Email" required>
              </div>
              <div class="form-group">
                 <input id="password" type="password" class="form-control" name="password" placeholder="Password" placeholder="Password" required>
              </div>

              <div class="form-group">
                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password"
                    required>
              </div>
              
              <button type="submit" class="btn btn-dark btn-lg btn-block">Register</button>
            </form>
            <br>
            <p style="text-align: center; color: grey;">
                Already a member?
                <a href="{{ route('login') }}" style="color: black;">Sign in.</a>
            </p>
             
        </div>
    </div>
</div>
<br><br><br><br><br>

@endsection
