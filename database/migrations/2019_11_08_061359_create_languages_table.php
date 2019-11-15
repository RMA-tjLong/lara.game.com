<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLanguagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('languages', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name', 32)->comment('语言名');
            $table->string('code', 16)->comment('语言代码');
            $table->tinyInteger('is_default')->default(0)->comment('是否默认');
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
        Schema::dropIfExists('languages');
    }
}
