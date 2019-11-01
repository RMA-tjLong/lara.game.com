<?php

namespace App\Models\Modules;

use App\Models\BaseModel;

class NewsModel extends BaseModel
{
    protected $table = 'news';

    public function games()
    {
        return $this->belongsTo('App\Models\Modules\GamesModel', 'game_id');
    }
}
