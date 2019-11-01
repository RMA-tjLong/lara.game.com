<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsSignaturesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news_signatures', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 32)->comment('标签名');
            $table->timestamps();
            $table->timestamp('deleted_at')->nullable()->comment('删除时间，如果存在则表示该条数据已被删除');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('news_signatures');
    }
}
