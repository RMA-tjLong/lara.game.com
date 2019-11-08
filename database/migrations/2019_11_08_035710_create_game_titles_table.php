<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGameTitlesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('game_titles', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('game_id')->comment('对应的游戏id');
            $table->unsignedInteger('locale_id')->comment('对应的翻译id');
            $table->string('title', 64)->comment('游戏名称');
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
        Schema::dropIfExists('game_titles');
    }
}
