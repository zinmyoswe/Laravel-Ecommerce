@extends('layout')

@section('title', 'Checkout')

@section('extra-css')
 
    <script src="https://js.stripe.com/v3/"></script>

@endsection

@section('content')

 <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      /**
 * The CSS shown here will not be introduced in the Quickstart guide, but shows
 * how you can use CSS to style your Element's container.
 */
.StripeElement {
  box-sizing: border-box;

  height: 40px;

  padding: 10px 12px;

  border: 1px solid transparent;
  border-radius: 4px;
  background-color: white;

  box-shadow: 0 1px 3px 0 #e6ebf1;
  -webkit-transition: box-shadow 150ms ease;
  transition: box-shadow 150ms ease;
}

.StripeElement--focus {
  box-shadow: 0 1px 3px 0 #cfd7df;
}

.StripeElement--invalid {
  border-color: #fa755a;
}

.StripeElement--webkit-autofill {
  background-color: #fefde5 !important;
}

html,body{
font-family: 'Lato', sans-serif;
font-family: 'Open Sans', sans-serif;
font-family: 'Abel', sans-serif;
}

.cart_sidebar{
    height: 365px;
    width: 300px;
    background-color: #f8f9fa;
}

a{
    color: black;
}
a:hover{
    color: black;
}

    </style>

    <div class="container">

        <br><br>
    <h2>DELIVERY METHOD</h2>
    <p class="lead">Free Shipping and Free Returns</p>

    <hr>

    <div class="row">
        <div class="col-md-8 order-md-1">
            <h4 class="mb-3">SHIPPING ADDRESS</h4>

        {{-- success error msg start --}}
        @if (session()->has('success_message'))
            <div class="spacer"></div>
            <div class="alert alert-success">
                {{ session()->get('success_message') }}
            </div>
        @endif

        @if(count($errors) > 0)
            <div class="spacer"></div>
            <div class="alert alert-danger">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{!! $error !!}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        {{-- success error msg end --}}

         <form action="{{ route('checkout.store') }}" method="POST" id="payment-form">
                    {{ csrf_field() }}
                    
                    <div class="mb-3">
                        <label for="email">Email Address</label>
                        @if (auth()->user())
                            <input type="email" class="form-control" id="email" name="email" value="{{ auth()->user()->email }}" readonly>
                        @else
                            <input type="email" class="form-control" id="email" name="email" value="{{ old('email') }}" required>
                        @endif
                    </div>

                
                    <div class="mb-3">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" value="{{ old('name') }}" required>
                    </div>


                    <div class="mb-3">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" name="address" value="{{ old('address') }}" required>
                    </div>

                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <label for="city">City</label>
                            <input type="text" class="form-control" id="city" name="city" value="{{ old('city') }}" required>
                        </div>
                        <div class="col-md-5 mb-3">
                            <label for="province">Province</label>
                            <input type="text" class="form-control" id="province" name="province" value="{{ old('province') }}" required>
                        </div>

                        <div class="col-md-3 mb-3">
                            <label for="postalcode">Postal Code</label>
                            <input type="text" class="form-control" id="postalcode" name="postalcode" value="{{ old('postalcode') }}" required>
                        </div>
                    </div> <!-- row end -->

                    
                        <div class="mb-3">
                            <label for="phone">Phone</label>
                            <input type="text" class="form-control" id="phone" name="phone" value="{{ old('phone') }}" required>
                        </div>
                    

                    <hr class="mb-4">

                    <h4 class="mb-3">Payment</h4>

                <div class="row">
                    <div class="col-md-12 mb-3">
                        <label for="name_on_card">Name on Card</label>
                        <input type="text" class="form-control" id="name_on_card" name="name_on_card" value="">
                    </div>

                    <div class="col-md-12">
                        <label for="card-element">
                          Credit or debit card
                        </label>
                        <div id="card-element">
                          <!-- a Stripe Element will be inserted here. -->
                        </div>

                        <!-- Used to display form errors -->
                        <div id="card-errors" role="alert"></div>
                    </div>
                    </div>

                    <hr class="mb-4">

                    <button type="submit" id="complete-order" class="btn btn-primary btn-lg btn-block">Checkout</button>
                

                </form>

                @if ($paypalToken)
                    <div class="mt-32">or</div>
                    <div class="mt-32">
                        <h2>Pay with PayPal</h2>

                        <form method="post" id="paypal-payment-form" action="{{ route('checkout.paypal') }}">
                            @csrf
                            <section>
                                <div class="bt-drop-in-wrapper">
                                    <div id="bt-dropin"></div>
                                </div>
                            </section>

                            <input id="nonce" name="payment_method_nonce" type="hidden" />
                            <button class="button-primary" type="submit"><span>Pay with PayPal</span></button>
                        </form>
                    </div>
                @endif


        </div>{{--  col-md-8 order-md-1 end --}}
        <div class="col-md-4 order-md-2 mb-4">
            <div class="cart_sidebar">
                <br>
               
                
                <h4 style="font-weight: 600; font-size: 22px; margin-left: 9px;">ORDER SUMMARY:</h4>
                <div class="cart-calculator">
                    <table class="table">
                    <tr>
                        <td>{{Cart::count()}} PRODUCTS</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Product total</td>
                        <td>${{Cart::subtotal()}}</td>

                    </tr>
                     @if(session()->has('coupon'))
                    <tr>
                        <td>
                            COUPON : {{session()->get('coupon')['name']}}
                         </td>

                        <td>- ${{session()->get('coupon')['discount']}}
                        <form method="post" action="{{route('coupon.destroy')}}" style="display:inline">
                            {{csrf_field()}}
                            {{method_field('delete')}}
                            <button type="submit" class="btn btn-link" style="color: #000; font-size: 12px;"><span class="fa fa-trash"></span></button>
                        </form>
                        </td>

                    </tr>
                    @endif
                    <tr>
                        <td>Tax(13%)</td>
                        <td>${{Cart::tax()}}</td>
                    </tr>
                    <tr>
                        <td>Delivery</td>
                        <td>FREE</td>
                    </tr>
                    <tr style="font-weight: bold">
                        <td>Total</td>
                        <td>${{Cart::total()}}</td>
                    </tr>
                      
                    @if (session()->has('coupon'))
                    <tr >
                        <td>Discount<br>
                        Tax Amount<br>
                        <b>Net Total</b>
                        </td>
                        <td>- ${{ $discount }}<br> 
                            ${{ $newTax }}<br>
                             <b>${{ $newTotal }} </b>                
                            
                        </td>
                    </tr>

                    <style type="text/css">
                        .cart_sidebar{
                            height: 465px;
                            width: 300px;
                            background-color: #f8f9fa;
                        }
                        .cart-calculator{
                            margin: 10px;

                            height: 395px;
                            width: 280px;
                            background-color: #fff;
                        }
                    </style>
                    @endif

                    </table>
                </div>
            </div> {{-- cart_sidebar end --}}
            <br>

            {{--    Coupon start --}}
   <div class="coupon_fr" >

    <div class="coupon_in">
        <table class="table">
            <tr>
                <td>
                <a class="btn btn-link" data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1" style="color: #000;">
                    <b>PROMO CODE</b>
                </a>
                </td>
                <td>
                    <a class="btn btn-link" data-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1" style="color: #000;">
                    <i class="fa fa-chevron-down"></i> </a>
                </td>
            </tr>
        </table>
        <div class="row">
  <div class="col">
    <div class="collapse multi-collapse" id="multiCollapseExample1">
      <div class="card card-body">
        <form method="post" action="{{route('coupon.store')}}">
            {{csrf_field()}}
            <input type="text" name="coupon_code" class="form-control" placeholder="CODES ARE CASE-SENSITIVE">
            <p style="font-size: 12px; color: grey;">Casing & hyphens need to be exact</p>

            <button type="submit" class="btn btn-dark btn-lg btn-block">Apply <i class="fa fa-arrow-right" style="margin-left: 35px;"></i></button>
        </form>
      </div>
    </div>
  </div>
</div>
</div>
</div>
    {{--    Coupon end --}}
    <br>

    <div class="ORDER DETAILS">
        <h4 style="font-weight: 600; font-size: 22px;">ORDER DETAILS</h4>
        @foreach (Cart::content() as $item)
        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <img src="{{ productImage($item->model->image) }}" alt="item" class="img_cartpage">
                </div>
                <div class="col-lg-7">
                    <a href="{{route('shop.show', $item->model->slug)}}" style="color: black;"> {{$item->model->name}}</a>
                    <p>${{ $item->model->price }}</p>
                    
                <p class="cart_p">COLOR: Black <br>
                   SIZE: 9.5  / Quantity: {{ $item->qty }}  </p>
                </div>
            </div>
        </div>
        @endforeach
    </div> {{-- ORDER DETAILS end --}}
    
    <br>
    <div class="cart_needhelp">
            <h5>NEED HELP?</h5>
            <p><a href="" style="color: #000;">Shipping</a></p>
            <p><a href="" style="color: #000;">Returns & Exchanges</a></p>
    </div>

    <div class="cart_sidebar2">
    <h5>ACCEPTED PAYMENT METHODS</h5>
    <img src="https://www.adidas.com/on/demandware.static/-/Sites-adidas-US-Library/en_US/dw88ec105e/us_payment_methods.png" width="300px">

    
    </div>{{--  cart_sidebar2 end --}}

        </div>{{-- col-md-4 order-md-2 mb-4 end --}}
    </div> {{-- row end --}}

       

        
    </div> {{-- container end --}}

    <br><br>

@endsection

@section('extra-js')
    <script src="https://js.braintreegateway.com/web/dropin/1.13.0/js/dropin.min.js"></script>

    <script>
        (function(){
            // Create a Stripe client
            var stripe = Stripe('{{ config('services.stripe.key') }}');

            // Create an instance of Elements
            var elements = stripe.elements();

            // Custom styling can be passed to options when creating an Element.
            // (Note that this demo uses a wider set of styles than the guide below.)
            var style = {
              base: {
                color: '#32325d',
                lineHeight: '18px',
                fontFamily: '"Roboto", Helvetica Neue", Helvetica, sans-serif',
                fontSmoothing: 'antialiased',
                fontSize: '16px',
                '::placeholder': {
                  color: '#aab7c4'
                }
              },
              invalid: {
                color: '#fa755a',
                iconColor: '#fa755a'
              }
            };

            // Create an instance of the card Element
            var card = elements.create('card', {
                style: style,
                hidePostalCode: true
            });

            // Add an instance of the card Element into the `card-element` <div>
            card.mount('#card-element');

            // Handle real-time validation errors from the card Element.
            card.addEventListener('change', function(event) {
              var displayError = document.getElementById('card-errors');
              if (event.error) {
                displayError.textContent = event.error.message;
              } else {
                displayError.textContent = '';
              }
            });

            // Handle form submission
            var form = document.getElementById('payment-form');
            form.addEventListener('submit', function(event) {
              event.preventDefault();

              // Disable the submit button to prevent repeated clicks
              document.getElementById('complete-order').disabled = true;

              var options = {
                name: document.getElementById('name_on_card').value,
                address_line1: document.getElementById('address').value,
                address_city: document.getElementById('city').value,
                address_state: document.getElementById('province').value,
                address_zip: document.getElementById('postalcode').value
              }

              stripe.createToken(card, options).then(function(result) {
                if (result.error) {
                  // Inform the user if there was an error
                  var errorElement = document.getElementById('card-errors');
                  errorElement.textContent = result.error.message;

                  // Enable the submit button
                  document.getElementById('complete-order').disabled = false;
                } else {
                  // Send the token to your server
                  stripeTokenHandler(result.token);
                }
              });
            });

            function stripeTokenHandler(token) {
              // Insert the token ID into the form so it gets submitted to the server
              var form = document.getElementById('payment-form');
              var hiddenInput = document.createElement('input');
              hiddenInput.setAttribute('type', 'hidden');
              hiddenInput.setAttribute('name', 'stripeToken');
              hiddenInput.setAttribute('value', token.id);
              form.appendChild(hiddenInput);

              // Submit the form
              form.submit();
            }

            // PayPal Stuff
            var form = document.querySelector('#paypal-payment-form');
            var client_token = "{{ $paypalToken }}";

            braintree.dropin.create({
              authorization: client_token,
              selector: '#bt-dropin',
              paypal: {
                flow: 'vault'
              }
            }, function (createErr, instance) {
              if (createErr) {
                console.log('Create Error', createErr);
                return;
              }

              // remove credit card option
              var elem = document.querySelector('.braintree-option__card');
              elem.parentNode.removeChild(elem);

              form.addEventListener('submit', function (event) {
                event.preventDefault();

                instance.requestPaymentMethod(function (err, payload) {
                  if (err) {
                    console.log('Request Payment Method Error', err);
                    return;
                  }

                  // Add the nonce to the form and submit
                  document.querySelector('#nonce').value = payload.nonce;
                  form.submit();
                });
              });
            });

        })();
    </script>
@endsection
