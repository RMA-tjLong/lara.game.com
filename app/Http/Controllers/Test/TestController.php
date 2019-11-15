<?php

namespace App\Http\Controllers\Test;

use App\Models\Languages\LanguageConfigsModel;

class TestController
{
    public function index()
    {
        $a = [];
        $this->getKey($a, ['a', 'b', 'c']);
        print_r($a);
        exit;
        $language_configs = LanguageConfigsModel::with(['relate_languages:id,code', 'relate_language_config_types:id,name', 'relate_language_config_keys:id,name'])
            ->get();

        print_r($language_configs->toArray());exit;
        $arr = [];
        foreach ($language_configs as $i => $res) {
            $lang = $res->relate_languages->code;
            $lang_config_type = $res->relate_language_config_types->name;
            $lang_config_key = $res->relate_language_config_keys->name;

            if (!isset($arr[$lang])) {
                $arr[$lang] = [];
            }

            if (!isset($arr[$lang][$lang_config_type])) {
                $arr[$lang][$lang_config_type] = [];
            }

            if (strpos('.', $lang_config_key) !== false) {
                $arr[$lang][$lang_config_type] = $this->getKey($arr[$lang][$lang_config_type], $this->explode('.', $lang_config_key));
            } else {
                $arr[$lang][$lang_config_type][$lang_config_key] = $res->trans;
            }

            break;
        }

        print_r($arr);
    }

    public function getKey(&$arr, $keys)
    {
        if (!is_array($keys)) return;
        if (!isset($arr[$keys[0]])) {
            $arr[$keys[0]] = [];
        }

        $this->getKey($arr, array_shift($keys));
    }
}
