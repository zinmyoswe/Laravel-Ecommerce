@extends('layout')

@section('title', 'Shopping Cart')

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')

<style type="text/css">
    form {
    float: left;
    margin-top: 0em;
}

 /*text-transform: uppercase;*/
</style>
<br>

<div class="container">

{{-- ----------------------------- ROW CART START ----------------------------- --}}
<div class="row">
   <div class="col-lg-9 col-sm-6 col-xs-12">

   
        <a href="/" style="color: black;">Home</a>
        /
        <span>Shopping Cart</span>
   

   @if(Cart::count() > 0)
    <h2>YOUR BAG <span class="title_cartpage">{{Cart::count()}} ITEMS </span></h2> 

    
    {{-- success error msg start --}}
    @if(session()->has('success_message'))
        <div class="alert alert-success">
            {{session()->get('success_message')}}
        </div>
        @endif

        @if(count($errors) > 0)
            <div class="alert alert-danger">
                <ul>
                    @foreach($errors->all() as $error)
                        <li>{{$error}}</li>
                    @endforeach
                </ul>
            </div>
        @endif
    {{-- success error msg end --}}
    <hr>
    
    <br>
        @foreach(Cart::content() as $item)
        <div class="container cart_item">
            <div class="row">

                <div class="col-lg-2">
                    <a href="{{ route('shop.show', $item->model->slug) }}">
                    <img src="{{ productImage($item->model->image) }}" class="img_cartpage"></a>
                </div>

                <div class="col-lg-5" >
                    <a href="{{route('shop.show', $item->model->slug)}}" class="cart_a"> {{$item->model->name}}</a>
                <p class="cart_p">Color: Black <br>
                   Size: 9.5   <b style="margin-left: 7px;">In Stock</b> <i class="far fa fa-check"></i></p>
                   <p>

                    <form action="" method="POST">
                    <button type="submit" class="btn btn-link">Edit</button>
                </form>

                    <form action="{{route('cart.destroy',$item->rowId)}}" method="POST">
                    {{csrf_field()}}
                    {{method_field('DELETE')}}
                    <button type="submit" class="btn btn-link">Delete</button>
                </form>
                   
                    <form action="{{route('cart.switchToSaveForLater',$item->rowId)}}" method="POST">
                    {{csrf_field()}}
                    
                    <button type="submit" class="btn btn-link">SaveForLater</button>
                </form>
               </p>

                </div> {{-- col-lg-5 end --}}
                
                <div class="col-lg-2">
                            <select class="quantity" data-id="{{ $item->rowId }}" data-productQuantity="{{ $item->model->quantity }}"
                            style="width: 50px; font-size:12px; font-weight: 700; border-radius: 2px; height: 30px;">
                                @for ($i = 1; $i < 5 + 1 ; $i++)
                                    <option {{ $item->qty == $i ? 'selected' : '' }}>{{ $i }}</option>
                                @endfor
                            </select>
                </div>

                    <div class="col-lg-1"></div>
                <div class="col-lg-2">$ {{$item->subtotal}}</div>
            </div>
        </div>
        <hr>
        @endforeach

        <div class="row">
            <div class="col-md-10">
                <a href="{{route('shop.index')}}" style="margin-right: 8px">Continue Shopping</a>
                <a href="{{route('checkout.index')}}" class="btn btn-dark">Checkout <i class="fa fa-arrow-right" style="width: 60px;"></i></a>
            </div>
            <div class="col-md-2">
                <p>Subtotal : {{Cart::subtotal()}}</p>
    <p>Tax(13%) : {{Cart::tax()}}</p>
    <p><b>Total: {{Cart::total()}} </b></p>
            </div>
        </div>
                        

            

       

          

       {{--    -------------- Coupon code start ----------------------- --}}
                  {{--   <div>
                        Subtotal <br>
                        @if (session()->has('coupon'))
                            Code ({{ session()->get('coupon')['name'] }})
                            <form action="{{ route('coupon.destroy') }}" method="POST" style="display:block">
                                {{ csrf_field() }}
                                {{ method_field('delete') }}
                                <button type="submit" style="font-size:14px;">Remove</button>
                            </form>
                            <hr>
                            New Subtotal <br>
                        @endif
                        Tax ({{config('cart.tax')}}%)<br>
                        <span class="cart-totals-total">Total</span>
                    </div>
                    <div class="cart-totals-subtotal">
                        {{ Cart::subtotal() }} <br>
                        @if (session()->has('coupon'))
                            -{{ $discount }} <br>&nbsp;<br>
                            <hr>
                            {{ $newSubtotal }} <br>
                        @endif
                        {{ $newTax }} <br>
                        <span class="cart-totals-total">{{ $newTotal }}</span>
                    </div> --}}
         {{--    -------------- Coupon code end ----------------------- --}}

           

            @else

                <h3>No items in Cart!</h3>
                
                <a href="{{ route('shop.index') }}" class="btn btn-link">Continue Shopping</a>           

            @endif

            </div> {{-- col-lg-9 col-sm-6 col-xs-12 end --}}

            <div class="col-lg-3 col-sm-6 col-xs-12">
            <div class="cart_sidebar">
                <br>
                <a href="{{route('checkout.index')}}" class="btn btn-dark btn-lg btn-block" style=" margin-right: :4px;">Checkout <i class="fa fa-arrow-right" style="margin-left: 35px;"></i></a>
                <p class="text-center" style="padding: 7px;">By placing your order, you agree to <br>the Delivery Terms</p>
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
                            height: 595px;
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
            </div>
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

    <div class="cart_needhelp">
            <h4>NEED HELP?</h4>
            <p><a href="" style="color: #000;">Shipping</a></p>
            <p><a href="" style="color: #000;">Returns & Exchanges</a></p>
            <p><a href="" style="color: #000;">Contact Us</a></p>
            </div>
        </div> {{-- col-lg-3 col-sm-6 col-xs-12 end --}}
    </div>{{--  row end --}}

{{-- ----------------------------- ROW CART END ----------------------------- --}}

{{-- ----------------------------- saveForLater START ----------------------------- --}}

<div class="row">
    <div class="col-lg-9">
        @if(Cart::instance('saveForLater')->count() > 0)

        <h2 class="title_cartpage">{{Cart::instance('saveForLater')->count()}} items Saved For Later</h2>
    @foreach(Cart::instance('saveForLater')->content() as $item) 

        <div class="container cart_item">
            <div class="row">
                <div class="col-lg-2">
                    <a href="{{route('shop.show', $item->model->slug)}}">
                    <img src="{{ productImage($item->model->image) }}" class="img_cartpage">
                    </a>
                </div>

                <div class="col-lg-5" ><a href="{{route('shop.show', $item->model->slug)}}">{{$item->model->name}}</a>
                <p class="cart_p">Color: Black <br>
                   Size: 9.5   <b style="margin-left: 7px;">In Stock</b> <i class="far fa fa-check"></i></p>
                <p>
                    <form action="{{route('saveForLater.destroy',$item->rowId)}}" method="POST">
                    {{csrf_field()}}
                    {{method_field('DELETE')}}
                    <button type="submit" class="btn btn-link">Remove</button>
                    </form>  
                </p>
                </div>

                <div class="col-lg-2">

                </div> 

                <div class="col-lg-3">$ {{$item->model->price}}<br><br><br>
                    <form action="{{route('saveForLater.switchToCart',$item->rowId)}}" method="POST">
                    {{csrf_field()}}

                    <button type="submit" class="btn btn-primary">Move To cart <i class="fa fa-shopping-bag"></i></button>
                </form>
                </div>
            </div>
        </div> {{-- container cart_item end  --}}
        <hr>

        @endforeach
@else

{{-- <h3>You have no items Saved for Later. </h3> --}}

@endif

    </div> {{-- col-lg-9 end --}}
<div class="col-lg-3">
        <div class="cart_sidebar2">
        <h4>ACCEPTED PAYMENT METHODS</h4>
        <img src="https://www.adidas.com/on/demandware.static/-/Sites-adidas-US-Library/en_US/dw88ec105e/us_payment_methods.png" width="300px">

        <p> <div class="cart-fontstyle">FREE SHIPPING, NO MINIMUM.
</div>
<a href="" style="color: #000;">Learn More</a></p>

<p> <div class="cart-fontstyle">SECURE CHECKOUT</div>
Pay safely with SSL technology.</p>

<p> <div class="cart-fontstyle">FREE RETURNS*
</div>
Within 30 days<br>
<a href="" style="color: #000;">read more</a></p>
        </div>
    </div>
</div> {{-- row end --}}


</div>
<br><br>
           
                

    {{-- TOP PICK FOR YOU Section start--}}
    
    {{-- TOP PICK FOR YOU Section end--}}

@endsection

@section('extra-js')
    <script src="{{ asset('js/app.js') }}"></script>
    <script>
        (function(){
            const classname = document.querySelectorAll('.quantity')

            Array.from(classname).forEach(function(element) {
                element.addEventListener('change', function() {
                    const id = element.getAttribute('data-id')
                    const productQuantity = element.getAttribute('data-productQuantity')

                    axios.patch(`/cart/${id}`, {
                        quantity: this.value,
                        productQuantity: productQuantity
                    })
                    .then(function (response) {
                        // console.log(response);
                        window.location.href = '{{ route('cart.index') }}'
                    })
                    .catch(function (error) {
                        // console.log(error);
                        window.location.href = '{{ route('cart.index') }}'
                    });
                })
            })
        })();
    </script>

    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
