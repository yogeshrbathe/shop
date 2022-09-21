<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Product extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        // return parent::toArray($request);

        return [
            'id' => $this->id,
            'product_title' => $this->title,
            'product_description' => $this->product_description,
            'product_price' => $this->product_price,
            'product_image' => $this->product_image,
            'product_category' => $this->product_category,
        ];
    }
}