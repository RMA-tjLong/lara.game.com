<?php

namespace App\Models\Modules;

use App\Models\Model;

class GameTitlesModel extends Model
{
    protected $table = 'game_titles';

    public function games()
    {
        return $this->hasMany('App\Models\Modules\GameTitlesModel', 'game_id', 'id');
    }
}
