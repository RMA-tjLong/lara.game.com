<?php

namespace App\Models\Languages;

use App\Models\Model;

class LanguageConfigsModel extends Model
{
    protected $table = 'language_configs';

    public function relate_language_config_types()
    {
        return $this->hasOne(\App\Models\Languages\LanguageConfigTypesModel::class, 'id', 'type_id');
    }

    public function relate_languages()
    {
        return $this->hasOne(\App\Models\Languages\LanguagesModel::class, 'id', 'locale_id');
    }

    public function relate_language_config_keys()
    {
        return $this->hasOne(\App\Models\Languages\LanguageConfigKeysModel::class, 'id', 'key_id');
    }
}
