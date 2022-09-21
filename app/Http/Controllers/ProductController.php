<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Product;
use App\Http\Resources\Product as ProductResource;
use Illuminate\Http\Resources\Json\AnonymousResourceCollection;
use Validator;
class ProductController extends Controller
{
    // echo 'dfd';die;
    /**
     * Display a listing of the resource.
     */
    public function index(): AnonymousResourceCollection
    {
        // Get products
        $products = Product::paginate(5);

        // Return collection of products as a resource
        return ProductResource::collection($products);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return ProductResource|null
     */
    public function store(Request $request)
    {
        // print_r($request->id);die;

        $product = $request->isMethod('put') ? Product::findOrFail($request->id) : new Product;

        $validation = Validator::make($request->all(),[ 
        'product_title' => 'required',
        'product_description' => 'required',
        'product_price' => 'required|numeric',
        'product_image' => 'required',
        'product_category' => 'required',
    ]);

    if($validation->fails()){
        return $validation->errors()->all();

    }
        $product->product_title = $request->input('product_title');
        $product->product_description = $request->input('product_description');
        $product->product_price = $request->input('product_price');
        $product->product_image = $request->input('product_image');
        $product->product_category = $request->input('product_category');
        // print_r($product->product_price);die;

        if ($product->save()) {
            return new ProductResource($product);
        }

        return null;
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return ProductResource
     */
    public function show($id): ProductResource
    {
        // Get product
        $product = Product::findOrFail($id);

        // Return single product as a resource
        return new ProductResource($product);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return ProductResource|null
     */
    public function destroy($id)
    {
        // Get product
        $product = Product::findOrFail($id);

        if ($product->delete()) {
            return new ProductResource($product);
        }

        return null;
    }
}
