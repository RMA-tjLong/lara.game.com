<?php

namespace App\Models\Modules;

use App\Models\Model;

class GamesModel extends Model
{
    protected $table = 'games';

    public function game_titles()
    {
        return $this->hasMany('App\Models\Modules\GameTitlesModel', 'game_id', 'id');
    }
}
