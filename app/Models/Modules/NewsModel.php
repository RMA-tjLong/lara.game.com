<?php

namespace App\Models\Modules;

use App\Models\Model;

class NewsModel extends Model
{
    protected $table = 'news';

    public function games()
    {
        return $this->belongsTo('App\Models\Modules\GamesModel', 'game_id', 'id');
    }

    public function titles()
    {
        return $this->hasMany('App\Models\Modules\NewsTitlesModel', 'news_id', 'id');
    }

    public function contents()
    {
        return $this->hasMany('App\Models\Modules\NewsContentsModel', 'news_id', 'id');
    }
}
