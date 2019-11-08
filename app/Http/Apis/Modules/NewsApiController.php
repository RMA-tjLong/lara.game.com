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
        $data = NewsModel::with(['games' => function($query) {
                $query->with(['game_titles' => function($query) {
                    $query->where('locale_id', 1);
                }]);
            }, 'contents' => function($query) {
                $query->where('locale_id', 1);
            }, 'titles' => function($query) {
                $query->where('locale_id', 1);
            }])->paginate();

        return ajax_return_success($data);
    }
}

