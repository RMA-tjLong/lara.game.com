<?php

namespace App\Models\Modules;

use App\Models\Model;

class GameTitlesModel extends Model
{
    protected $table = 'game_titles';

    public function relate_game_titles()
    {
        return $this->hasMany(\App\Models\Modules\GameTitlesModel::class, 'game_id', 'id');
    }
}
