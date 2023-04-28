<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubcategoriisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subcategoriis', function (Blueprint $table) {
            $table->id();
          
            $table->string('name');
      

            $table->string('slug');

            $table->boolean('color')->default(false);
            $table->boolean('size')->default(false);

           
            $table->unsignedBigInteger('categorii_id');
            $table->foreign('categorii_id')->references('id')->on('categoriis')->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('subcategoriis');
    }
}
