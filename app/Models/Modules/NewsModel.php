<?php

namespace App\Models\Modules;

use App\Models\Model;

class NewsModel extends Model
{
    protected $table = 'news';

    public function games()
    {
        return $this->belongsTo('App\Models\Modules\GamesModel', 'game_id');
    }
}
