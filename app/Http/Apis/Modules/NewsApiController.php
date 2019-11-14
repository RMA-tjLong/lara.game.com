<?php

namespace App\Http\Apis\Modules;

use App\Models\Modules\NewsModel;
use App\Http\Apis\Controller;
use App\Models\Tags\NewsTagsModel;
use Illuminate\Http\Request;
use App\Utils\FiltersUtil;

class NewsApiController extends Controller
{
    /**
     * 通过分页获取数据
     *
     * @return \Illuminate\Http\Response
     */
    public function getNewsByPagination(Request $request)
    {
        $input = $request->input();
        $input = FiltersUtil::parseFilters($input);

        $news = NewsModel::with(['relate_games.relate_game_titles', 'relate_news_contents', 'relate_news_titles']);

        if ($input['time']) {
            $news = $news->whereBetween('created_at', $input['time']);
        }

        if ($news_tag_code = $input['tag']) {
            // 当标签存在时检索对应新闻，当标签不存在时返回所有新闻
            if (NewsTagsModel::where(['code' => $news_tag_code])->first()) {
                $news = $news->whereHas('relate_news_tags', function($query) use ($news_tag_code) {
                    $query->where('code', $news_tag_code);
                });
            }
        }

        if (isset($input['gameid'])) {
            $news = $news->where('game_id', $input['gameid']);
        }

        $news = $news->paginate();

        return ajax_return_success($news);
    }
}

