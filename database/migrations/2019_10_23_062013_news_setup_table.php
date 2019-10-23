<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class NewsSetupTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        DB::beginTransaction();

        Schema::create('news', function (Blueprint $table) {
            $table->increments('id');
            $table->string('title');
            $table->string('subimg_url');
            $table->string('description', 255);
            $table->timestamp('deleted_at')->nullable();
            $table->timestamps();
        });

        Schema::create('news_content', function (Blueprint $table) {
            $table->integer('news_id')->unsigned();
            $table->text('content');

            $table->foreign('news_id')->references('id')->on('news')
                ->onUpdate('cascade')->onDelete('cascade');
        });

        DB::commit();
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('news');
        Schema::drop('news_content');
    }
}
