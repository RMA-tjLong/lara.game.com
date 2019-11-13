<?php

namespace App\Models\Modules;

use App\Models\Model;

class GamesModel extends Model
{
    protected $table = 'games';

    public function relate_game_titles()
    {
        return $this->hasMany(\App\Models\Modules\GameTitlesModel::class, 'game_id', 'id')
            ->where('locale_id', self::$locale_id);
    }
}
