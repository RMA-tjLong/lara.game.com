<?php

namespace App\Models\Tags;

use App\Models\Model;

class NewsTagsModel extends Model
{
    protected $table = 'news_tags';

    public function relate_news_tag_titles()
    {
        return $this->hasMany(\App\Models\Tags\NewsTagTitlesModel::class, 'news_tag_id', 'id');
    }
}
