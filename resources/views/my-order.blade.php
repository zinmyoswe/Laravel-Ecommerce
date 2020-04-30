@extends('layout')

@section('title', 'My Order')

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

        <br><br>
   

    <div class="container">

        <a href="/">Home</a>
         / 
        <span>My Order</span>

        <h2>ORDER DETAIL INFORMATION</h2>

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


        
    

    

     
   
           
                
           

        


               

                    <p>Order Placed :   {{ presentDate($order->created_at) }}</p>
                    <p>Order ID     :   {{ $order->id }}</p>
                    <p>TOTAL        :   ${{ $order->billing_total }}</p>
                    
                    

               
                        <table class="table" style="width:50%">
                            <tbody>
                                <tr>
                                    <td>Name</td>
                                    <td>{{ $order->user->name }}</td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>{{ $order->billing_address }}</td>
                                </tr>
                                <tr>
                                    <td>City</td>
                                    <td>{{ $order->billing_city }}</td>
                                </tr>
                                <tr>
                                    <td>Subtotal</td>
                                    <td>${{ $order->billing_subtotal }}</td>
                                </tr>
                                <tr>
                                    <td>Tax</td>
                                    <td>{{ $order->billing_tax }}</td>
                                </tr>
                                <tr>
                                    <td>Total</td>
                                    <td>${{ $order->billing_total }}</td>
                                </tr>
                            </tbody>
                        </table>

              

                
                 
                        <h4 style="font-weight: 600; font-size: 22px;">ORDER DETAILS</h4>
                        @foreach ($products as $product)
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5">
                                    <img src="{{ productImage($product->image) }}" alt="item" class="img_cartpage">
                                </div>
                                <div class="col-lg-7">
                                  <a href="{{ route('shop.show', $product->slug) }}" style="color: black; font-size: 18px; font-weight: 600">{{ $product->name }}</a>

                                    <p>${{ $product->price }}</p>
                                    
                                <p class="cart_p">COLOR: Black <br>
                                   SIZE: 9.5  / Quantity: {{ $product->pivot->quantity }}  </p>
                                </div>
                                </div>
                        </div>
                        @endforeach

                        <br><br>
                        <a href="#" class="btn btn-dark pull-right">Invoice</a>

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

    <div style="height: 190px;"></div>
        

@endsection

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
