@extends('layout')

@section('title', 'Thank You')

@section('extra-css')

@endsection

@section('body-class', 'sticky-footer')

@section('content')

   <div class="container">
   		<div class="row">
   			<div class="col-lg-4"></div>
   			<div class="col-lg-5">
   				 <h1>Thank you for <br> Your Order!</h1>
       			 <p>A confirmation email was sent</p>
       
           <a href="{{ url('/') }}" class="button">Home Page</a>
   			</div>
   		</div>  
   </div>




@endsection
