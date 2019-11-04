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
        $data = NewsModel::with('games')->paginate();
        return $data;
    }
}

