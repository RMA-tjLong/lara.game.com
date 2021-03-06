<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsTitlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news_titles', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('news_id')->comment('对应的新闻id');
            $table->unsignedInteger('locale_id')->comment('对应的翻译id');
            $table->string('title', 64)->comment('新闻标题');
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
        Schema::dropIfExists('news_titles');
    }
}
