<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsToSignaturesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news_to_signatures', function (Blueprint $table) {
            $table->integer('news_id')->comment('对应的新闻id');
            $table->integer('signature_id')->comment('对应的标签id');

            $table->foreign('news_id')->references('id')->on('news')
                ->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('signature_id')->references('id')->on('signatures')
                ->onUpdate('cascade')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('news_to_signatures');
    }
}
