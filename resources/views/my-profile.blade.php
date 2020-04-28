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

html, body{
    height: 100%;
    font-family: 'Lato', sans-serif;
    font-family: 'Open Sans', sans-serif;
    font-family: 'Abel', sans-serif;
}

.btn-light {
    color: black;
    background-color: white;
    border-color: white;
    
}




    


/* about */
#about{
 /*   background: url('img/about.jpg');*/
    background-size: cover;
    background-color: #6d8194;
    
    
}

#about2{
 /*   background: url('img/about.jpg');*/
    background-size: cover;
    background-color: black;
    
    
}


.about-text{
    
    color: white;
    padding: 1.85rem;
}

.about-text h2{
    font-family: AdihausDIN,Helvetica,Arial,sans-serif;
    font-style: normal;
}

.card-title{
    font-family: 'Lato', sans-serif;

}
.sead{
    font-size: 14px;
    line-height: 20px;
    margin-bottom: 14px;
}

.profile_sa {
    background-color: transparent;
    color: #000;
    cursor: pointer;
    
    padding-left: 1px;
    padding-right: 1px;
    text-decoration: underline;
    transition: color .1s cubic-bezier(.3,0,.45,1),background-color .1s cubic-bezier(.3,0,.45,1);
    margin-top: 10px;
    
}



</style>

        


    <div class="container">
         <a href="/">Home</a>
        /
        <span>MyAccount</span>


        <div class="row">

            <div class="col-lg-9">
                

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

                <br><br>
                
                {{-- ----------------section start---------------- --}}
                <section id="about">
                  <div class="section-content">
                    <div class="container">
                        <div class="row">
                      <div class="col-md-6">
                        <div class="about-text">
                          <h2>YOU'RE A CHALLENGER</h2>
                          <p class="sead">It's go time. You now have access to all Challenger level rewards. Explore your rewards and start earning points to unlock the next level.
                        </p>

                        <a href="" style="color: white; font-size: 14px;">LEARN MORE</a><br><br>
                        <a href="" class="btn btn-light">EXPLORE REWARDS 
                        <i class="fa fa-arrow-right" style="margin-left:9px;"></i>
                        </a>
                        
                        </div>
                        
                      </div>
                      <div class="col-md-6">
                          <img src="https://www.adidas.com/on/demandware.static/-/Sites-adidas-US-Library/en_US/dw5aac0182/GlassCreatorsClub/lvl1.png"
                          style="width: 25rem;">
                      </div> 
                      
                    </div>
                    </div>
                  </div>
                  <br>
                </section>
                 {{-- ----------------section end---------------- --}}

                 <br><br>
                
                {{-- ----------------section2 start---------------- --}}
                <section id="about2">
                  <div class="section-content">
                    <div class="container">
                        <div class="row">
                      <div class="col-md-6">
                        <div class="about-text">
                            <br><br>
                          <h2>INVITE YOUR FRIENDS</h2>
                          <p class="sead">Collect up to 1000 points by inviting your friends to adidas’ Creators Club! You’ll get 50 points for every friend who joins. Your friends receive 100 points.
                        </p>

                        <br><br>
                        <a href="" class="btn btn-light">SHARE LINK
                        <i class="fa fa-arrow-right" style="margin-left:9px;"></i>
                        </a>
                        
                        </div>
                        
                      </div>
                      <div class="col-md-6">
                          <img src="https://www.adidas.com/glass/react/2ee5b69/assets/img/iaf-banner-mobile.png"
                          style="height:350px; margin-left: 15px; width: 100%">
                      </div> 
                      
                    </div>
                    </div>
                  </div>
                  <br>
                </section>
                 {{-- ----------------section2 end---------------- --}}
            </div> {{-- col-lg-9 end --}}
            

            <div class="col-lg-3">

                <h5>My Account</h5>
                
                <p><a href="{{ route('users.edit') }}" class="profile_sa">
                Personal Information</a></p>
                <p><a href="{{ route('orders.index') }}" class="profile_sa">Order History</a></p>
                <p><a href="" class="profile_sa">Address Book</a></p>
                <p><a href="" class="profile_sa">Wish List</a></p>
                
            
            
            <hr>

            <h5>NEED HELP?</h5>

            <p><a href="" class="profile_sa">Ordering & Payments</a></p>
            <p><a href="" class="profile_sa">Delivery</a></p>
            <p><a href="" class="profile_sa">Returns & Refunds</a></p>
            <p><a href="" class="profile_sa">Account & Newsletter</a></p>
            <p><a href="" class="profile_sa">Company information</a></p>
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
