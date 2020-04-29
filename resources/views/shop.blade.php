@extends('layout')

@section('title', 'Products')

@section('extra-css')
    <link rel="stylesheet" href="{{ asset('css/algolia.css') }}">
@endsection

@section('content')

<style type="text/css">
    .shop{
        width: 233px;
        height: 360px;
        /*background: yellow;*/
        font-size: 14px;
        margin-bottom:3px;
        
    }
    .shop_img{
        width: 233px;


    }
    .shop a{
        color: #000;
    }
    ul li a{
        list-style: none;
        color: #000;
    }

    ul li{
        list-style: none;
    }
    a:hover{
        color: black;
    }
    a{
        color: black;
    }

   

.btn-light {
    color: black;
    background-color: white;
    border-color: whitesmoke;
    border-radius: 0;
}

.btn-light:hover{
    border-color: black;
    background-color: white;
}


.dropdown-menu {
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    display: none;
    float: left;
    min-width: 10rem;
    padding: .5rem 0;
    margin: .125rem 0 0;
    font-size: 1rem;
    color: black;
    text-align: left;
    list-style: none;
    background-color: white;
    background-clip: padding-box;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 0;
}

 .dropdown-item {
    display: block;
    width: 100%;
    padding: .25rem 1.5rem;
    clear: both;
    font-weight: 400;
    color: #000 !important;
    text-align: inherit;
    white-space: nowrap;
    background-color: white;
    border: 0;  
}


</style>

<div class="container">
   
        <a href="/">Home</a>
        /
        <span>Shop</span>
    

    <div class="container">
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
    </div>

   <br><br><br>
    <div class="row">
        <div class="col-md-2 mb-6">
            <h5>SHOP BY CATEGORY</h5>
            <ul>
                @foreach ($categories as $category)
                    <li class="{{ setActiveCategory($category->slug) }}" style="margin-bottom: 5px;"><a href="{{ route('shop.index', ['category' => $category->slug]) }}">{{ $category->name }}</a></li>
                @endforeach
            </ul>
        </div>

        <div class="col-md-10 mb-6">
            <div class="row">
                <div class="col-lg-5 mb-6"><h4 style="font-weight: bold">{{$categoryName}}</h4></div>
                <div class="col-lg-7 mb-6">

                   <!-- Example single danger button -->
                
                <div class="d-flex">
  <div class="dropdown mr-1">
    <button type="button" class="btn btn-light dropdown-toggle" id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="10,20">
      PRODUCT TYPE
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
      @foreach ($categories as $category)
        <a class="dropdown-item" href="{{ route('shop.index', ['category' => $category->slug]) }}" style="color: #000;">
            {{ $category->name }}</a>
    @endforeach
    </div>
  </div>

  <div class="btn-group" style="margin-right: 4px;">
    <button type="button" class="btn btn-light dropdown-toggle" id="dropdownMenuOffset3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="10,20">
      PRICE
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset3">
    <a class="dropdown-item" href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'price_less_than_50']) }}">
            less than $50</a>
    <a class="dropdown-item" href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'price_50_to_100']) }}">
            $50 - $100</a>
    <a class="dropdown-item" href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'price_100_to_150']) }}">
            $100 - $150</a>
    <a class="dropdown-item" href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'price_150_or_more']) }}">
            $150 or more</a>
         
    </div>
  </div>

  <div class="btn-group">
    <button type="button" class="btn btn-light dropdown-toggle" id="dropdownMenuOffset2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-offset="10,20">
      SORT BY
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset2">
    <a class="dropdown-item" href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'Newest']) }}">
            Newest</a>
      <a class="dropdown-item" href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'low_high']) }}" style="color: #000;">
            Price :low - high</a>
    <a class="dropdown-item" href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'high_low']) }}">
            Price :high - low</a>
    <a class="dropdown-item" href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'Top_Sellers']) }}">
            Top Sellers</a>
        
    </div>
  </div>
</div>
  
                   
                  {{--   <b style="margin-left: 35px;">Price :</b>
                    <a href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'low_high']) }}" style="color: #000;">low - high</a> |
                    <a href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'high_low']) }}" style="color: #000;">high - low</a>
                    <a href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'Top_Sellers']) }}" style="color: #000;">Top Sellers</a> --}}
                   
                </div>
                </div>
             <br><br>
            <div class="row">

            
                @forelse ($products as $product)
                    <div class="col-lg-3 col-md-3 col-xs-12 col-sm-6">
                    <div class="shop">
                        <a href="{{ route('shop.show', $product->slug) }}"><img src="{{ productImage($product->image) }}" class="shop_img"></a>
                        <br><br>

                        <a href="{{ route('shop.show', $product->slug) }}">{{ $product->name }}</a>
                        <br>

                        ${{ $product->price }}
                            <br><br>
                    <p style="color: grey; font-size: 12px;">9 colors</p>

                    </div> {{-- shop end --}}
                </div>{{--  col-lg-3 col-md-3 col-xs-12 col-sm-6 end --}}
                    

                @empty
                    @include('notfound');
                @endforelse
            </div> <!--  row end-->

            
        
        
        <br><br>
            {{ $products->appends(request()->input())->links() }}
    </div>{{-- col-md-10 mb-6 end --}}
</div>{{--  row end --}}
</div> {{-- container end --}}

@endsection

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
