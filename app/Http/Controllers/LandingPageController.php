<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;
use DB;

class LandingPageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::where('featured', true)->take(8)->inRandomOrder()->get();
        $products_sa = DB::table('products')->orderBy('id','DESC')->paginate(4);
        $best_seller2 = DB::table('products')->orderBy('id','ASC')->paginate(4);

        return view('landing-page')->with([
            'products' => $products,
            'products_sa' => $products_sa,
            'best_seller2' => $best_seller2,
        ]);
    }
}
