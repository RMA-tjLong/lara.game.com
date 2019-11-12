<?php

namespace App\Http\Apis\Modules;

use App\Models\Modules\NewsModel;
use App\Http\Apis\Controller;

class NewsApiController extends Controller
{
    public function beforeAction()
    {
        $this->setLocaleId();
    }

    /**
     * 通过分页获取数据
     *
     * @return \Illuminate\Http\Response
     */
    public function getNewsByPagination()
    {
        $filter = ['locale_id' => $this->locale_id];

        // TODO: 将 locale_id 写到 model
        $data = NewsModel::with(['relate_games' => function($query) use ($filter) {
                $query->with(['relate_game_titles' => function($query) use ($filter) {
                    $query->where($filter);
                }]);
            }, 'relate_news_contents' => function($query) use ($filter) {
                $query->where($filter);
            }, 'relate_news_titles' => function($query) use ($filter) {
                $query->where($filter);
            }])->paginate();

        return ajax_return_success($data);
    }
}

