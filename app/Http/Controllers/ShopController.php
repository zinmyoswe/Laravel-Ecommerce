<?php

namespace App\Http\Controllers;

use App\Product;
use App\Category;
use App\Order;
use Illuminate\Http\Request;
use DB;

class ShopController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $pagination = 8;
        $categories = Category::all();

        if (request()->category) {
            $products = Product::with('categories')->whereHas('categories', function ($query) {
                $query->where('slug', request()->category);
            });
            $categoryName = optional($categories->where('slug', request()->category)->first())->name;
        } else {
            $products = Product::where('featured', true);
            $categoryName = 'Featured';
        }

        if (request()->sort == 'low_high') {
            $products = $products->orderBy('price')->paginate($pagination);
        } elseif (request()->sort == 'high_low') {
            $products = $products->orderBy('price', 'desc')->paginate($pagination);
        } 
        elseif (request()->sort == 'Top_Sellers') {
            $products = DB::table('products')
            ->leftJoin('order_product','products.id','=','order_product.product_id')
            ->selectRaw('products.*, COALESCE(sum(order_product.quantity),0) total')
            ->groupBy('products.id')
            ->orderBy('total','desc')
            ->paginate($pagination);
        }

        elseif (request()->sort == 'Newest') {
            $products = $products->orderBy('id', 'desc')->paginate($pagination);
        }
        elseif (request()->sort == 'price_50_to_100') {
            $products = DB::table('products')
                    ->where('price', '>=',50)
                    ->where('price', '<=', 100)
                    ->orderBy('id', 'desc')
                    ->paginate($pagination);
        }

        elseif (request()->sort == 'price_100_to_150') {
            $products = DB::table('products')
                    ->where('price', '>=',100)
                    ->where('price', '<=', 150)
                    ->orderBy('id', 'desc')
                    ->paginate($pagination);
        }

        elseif (request()->sort == 'price_150_or_more') {
            $products = DB::table('products')
                    ->where('price', '>=', 150)
                    ->orderBy('id', 'desc')
                    ->paginate($pagination);
        }

        elseif (request()->sort == 'price_less_than_50') {
            $products = DB::table('products')
                    ->where('price', '<=', 50)
                    ->orderBy('id', 'desc')
                    ->paginate($pagination);
        }


         else {
            $products = $products->paginate($pagination);
        }

        return view('shop')->with([
            'products' => $products,
            'categories' => $categories,
            'categoryName' => $categoryName,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  string  $slug
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $product = Product::where('slug', $slug)->firstOrFail();
        $mightAlsoLike = Product::where('slug', '!=', $slug)->mightAlsoLike()->get();
        $products_sa = DB::table('products')->orderBy('id','DESC')->paginate(4);
        

        $stockLevel = getStockLevel($product->quantity);

        return view('product')->with([
            'product' => $product,
            'stockLevel' => $stockLevel,
            'mightAlsoLike' => $mightAlsoLike,
            'products_sa' => $products_sa,
            
        ]);
    }

    public function search(Request $request)
    {
        $request->validate([
            'query' => 'required|min:3',
        ]);

        $query = $request->input('query');

        // $products = Product::where('name', 'like', "%$query%")
        //                    ->orWhere('details', 'like', "%$query%")
        //                    ->orWhere('description', 'like', "%$query%")
        //                    ->paginate(10);

        $products = Product::search($query)->paginate(10);

        return view('search-results')->with('products', $products);
    }

    public function searchAlgolia(Request $request)
    {
        return view('search-results-algolia');
    }
}
