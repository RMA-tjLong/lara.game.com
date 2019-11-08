<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLanguageConfigsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('language_configs', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('locale_id')->comment('对应的语言id');
            $table->unsignedInteger('type_id')->comment('对应的分类id');
            $table->string('name', 64)->comment('翻译名，管理员不得编辑，如果有点号分隔则为多级翻译');
            $table->string('trans', 225)->comment('翻译内容');
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
        Schema::dropIfExists('language_configs');
    }
}
