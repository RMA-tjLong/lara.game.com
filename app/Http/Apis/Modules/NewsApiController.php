<?php

namespace App\Http\Apis\Modules;

use App\Models\Modules\NewsModel;
use App\Http\Apis\Controller;

class NewsApiController extends Controller
{
    /**
     * 通过分页获取数据
     *
     * @return \Illuminate\Http\Response
     */
    public function getNewsByPagination()
    {
        $data = NewsModel::with(['relate_games.relate_game_titles', 'relate_news_contents', 'relate_news_titles'])->paginate();

        return ajax_return_success($data);
    }
}

