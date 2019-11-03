<?php

namespace App\Http\Controllers\Apis;

use App\Models\Modules\NewsModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

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

