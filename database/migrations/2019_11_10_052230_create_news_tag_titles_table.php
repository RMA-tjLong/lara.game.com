<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsTagTitlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news_tag_titles', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('news_tag_id')->comment('新闻标签名');
            $table->unsignedInteger('locale_id')->comment('对应的翻译id');
            $table->string('title', 32)->comment('标签名');
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
        Schema::dropIfExists('news_tag_titles');
    }
}
