<?php

namespace App\Observers;

use App\Models\Product;
use App\Models\Subcategorii;

class ProductObserver
{
    public function updated(Product $product){
        $subcategorii_id = $product->subcategorii_id;
        $subcategorii = Subcategorii::find($subcategorii_id);
  
        if ( $subcategorii->size) {
            if ($product->colors->count()) {
             $product->colors()->detach();
            }
         } elseif($subcategorii->color){
                if ($product->sizes->count()) {
                    foreach($product->sizes as $size){
                        $size->delete();
                    }
                }
            }else{
                if ($product->colors->count()) {
                    $product->colors()->detach();
                   }

                   if ($product->sizes->count()) {
                    foreach($product->sizes as $size){
                        $size->delete();
                    }
                }
            }
        }
    }

