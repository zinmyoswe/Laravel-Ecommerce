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
                <div class="col-lg-9 mb-6"><h4 style="font-weight: bold">{{$categoryName}}</h4></div>
                <div class="col-lg-3 mb-6"><b style="margin-left: 35px;">Price :</b>
                    <a href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'low_high']) }}" style="color: #000;">low - high</a> |
                    <a href="{{ route('shop.index', ['category'=> request()->category, 'sort' => 'high_low']) }}" style="color: #000;">high - low</a>
                </div>
             <br><br>
            <div class="row">

            
                @forelse ($products as $product)
                    <div class="col-lg-3 col-md-6 col-xs-12 col-sm-6">
                    <div class="shop">
                        <a href="{{ route('shop.show', $product->slug) }}"><img src="{{ productImage($product->image) }}" class="shop_img"></a>
                        <br><br>

                        <a href="{{ route('shop.show', $product->slug) }}">{{ $product->name }}</a>
                        <br>

                        {{ $product->price }}
                            <br><br>
                    <p style="color: grey; font-size: 12px;">9 colors</p>

                    </div>
                </div>
                    

                @empty
                    @include('notfound');
                @endforelse
            </div> <!-- end products -->

            
        
        </div>
        <br><br>
            {{ $products->appends(request()->input())->links() }}
    </div>
</div>
</div>

@endsection

@section('extra-js')
    <!-- Include AlgoliaSearch JS Client and autocomplete.js library -->
    <script src="https://cdn.jsdelivr.net/algoliasearch/3/algoliasearch.min.js"></script>
    <script src="https://cdn.jsdelivr.net/autocomplete.js/0/autocomplete.min.js"></script>
    <script src="{{ asset('js/algolia.js') }}"></script>
@endsection
