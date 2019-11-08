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
        $filter = ['locale_id' => $this->locale_id];

        $data = NewsModel::with(['games' => function($query) use ($filter) {
                $query->with(['game_titles' => function($query) use ($filter) {
                    $query->where($filter);
                }]);
            }, 'contents' => function($query) use ($filter) {
                $query->where($filter);
            }, 'titles' => function($query) use ($filter) {
                $query->where($filter);
            }])->paginate();

        return ajax_return_success($data);
    }
}

