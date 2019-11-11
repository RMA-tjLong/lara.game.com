<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateNewsTagsTableAddCodeAndIsComprehensive extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('news_tags', function (Blueprint $table) {
            $table->string('code', 16)->comment('新闻标签唯一代码标识');
            $table->tinyInteger('is_comprehensive')->default(0)->comment('是否为综合新闻');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('news_tags', function (Blueprint $table) {
            //
        });
    }
}
