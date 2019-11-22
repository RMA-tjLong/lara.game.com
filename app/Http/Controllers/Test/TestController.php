<?php

namespace App\Http\Controllers\Test;

use App\Models\Languages\LanguageConfigsModel;
use Illuminate\Support\Facades\Storage;

class TestController
{
    public function index()
    {
        $language_configs = LanguageConfigsModel::with([
            'relate_languages:id,code',
            'relate_language_config_types:id,name',
            'relate_language_config_keys:id,name'
        ])->get();

        $arr = [];

        foreach ($language_configs as $i => $res) {
            $lang = $res->relate_languages->code;
            $lang_config_type = $res->relate_language_config_types->name;
            $lang_config_key = $res->relate_language_config_keys->name;
            $lang_key = $lang_config_type . '.' . $lang_config_key;

            if (!isset($arr[$lang])) {
                $arr[$lang] = [];
            }

            $arr[$lang][$lang_key] = $res->trans;
        }

        foreach (array_reverse($arr) as $k => $val) {
            Storage::put($k . '.json', json_encode($val));
        }
    }
}
