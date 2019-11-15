<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateLanguageConfigsTableAddDeletedAtAndUpdateConfigKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('language_configs', function (Blueprint $table) {
            $table->dropColumn('name');
            $table->unsignedInteger('key_id')->comment('对应的键值id');
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
        Schema::table('language_configs', function (Blueprint $table) {
            //
        });
    }
}
