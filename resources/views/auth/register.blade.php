@extends('layout')

@section('title', 'Sign Up for an Account')

@section('content')

<style type="text/css">
  .card{
    padding: 20px;
    border-radius: 0;
  }
  a{
    color: black;
    text-decoration: underline;
  }
  a:hover{
    color: black;
    text-decoration: underline;
  }

  .btn-outline-dark{
    border-radius: 0;
    width: 150px;
  }
  .btn-outline-dark:hover{
    background: white;
    color: black;
    cursor: pointer;
  }
  .btn-dark{
    border-radius: 0;
  }
  .spring-btn-black{
            clear:both; background: #000; border: none; color: #fff; font-size: 1em; padding: 10px; cursor: pointer; font-size: 17px;
      }

</style>

<br><br><br>
<div class="container">
    <div class="row">
        <div class="col-lg-4 col-sm-12 col-xs-12 offset-4">
          <div class="card">
            <h2 style="text-align: center"> ACTIVE SHOP</h2>
            <br>

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
              
              <button type="submit" class="spring-btn-black ">REGISTER <span class="fa fa-arrow-right" style="margin-left: 9px;"></span></button>
            </form>
           <br>


            <div class="btn btn-outline-dark">FACEBOOK <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1200px-Facebook_Logo_%282019%29.png" width="25" height="25"></div><br>

                <div class="btn btn-outline-dark">GOOGLE <img src="https://img.icons8.com/color/480/google-logo.png" width="25" height="25"></div>
               <br>
            <p style="text-align: center; color: grey;">
                Already a member?
                <a href="{{ route('login') }}" style="color: black;">Sign in.</a>
            </p>

            <p>By clicking 'Submit' you agree to the <a href=""> Creators Club Terms & Conditions</a>, <a href=""> adidas Terms & Conditions </a>and the adidas Privacy Policy</p>
             </div>
        </div>
    </div>
</div>

<div style="height: 230px;"></div>

@endsection
