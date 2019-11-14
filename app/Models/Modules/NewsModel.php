<?php

namespace App\Models\Modules;

use App\Models\Model;

class NewsModel extends Model
{
    protected $table = 'news';

    public function relate_games()
    {
        return $this->belongsTo(\App\Models\Modules\GamesModel::class, 'game_id', 'id');
    }

    public function relate_news_titles()
    {
        return $this->hasMany(\App\Models\Modules\NewsTitlesModel::class, 'news_id', 'id')
            ->where('locale_id', self::$locale_id);
    }

    public function relate_news_contents()
    {
        return $this->hasMany(\App\Models\Modules\NewsContentsModel::class, 'news_id', 'id')
            ->where('locale_id', self::$locale_id);
    }

    public function relate_news_tags()
    {
        return $this->belongsToMany(\App\Models\Tags\NewsTagsModel::class, 'news_to_tags', 'news_id', 'tag_id');
    }
}
