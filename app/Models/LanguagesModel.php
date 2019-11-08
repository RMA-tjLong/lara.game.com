<?php

namespace App\Models;

class LanguagesModel extends Model
{
    protected $table = 'languages';

    /**
     * 返回当前语言环境下的语言id
     *
     * @return integer
     */
    public static function getLocaleId($code = '')
    {
        $code = $code ? : \App::getLocale();
        return LanguagesModel::where('code', $code)->first()->id;
    }
}
