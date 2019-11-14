<?php

namespace App\Http\Controllers\Modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Tags\NewsTagsModel;
use App\Models\Modules\GamesModel;

class NewsController extends Controller
{
    protected $news_tags;

    public function __construct(Request $request)
    {
        parent::__construct($request);
    }

    public function beforeAction()
    {
        parent::beforeAction();

        // 读取频道并分类
        $news_tags = NewsTagsModel::with(['relate_news_tag_titles'])
            ->orderByDesc('sort')
            ->get();

        $arr = [
            'comprehensive' => [],
            'normal' => [],
        ];

        foreach ($news_tags as $i => $news_tag) {
            if ($news_tag['is_comprehensive']) {
                $arr['comprehensive'][] = $news_tag;
            } else {
                $arr['normal'][] = $news_tag;
            }
        }

        $this->news_tags = $arr;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($news_tag_code = $request->input('tag')) {
            $news_tags = NewsTagsModel::where(['code' => $news_tag_code])
                ->first();

            if ($news_tags && $news_tags->relate_news_tag_titles->count()) {
                $page_title = $news_tags->relate_news_tag_titles[0]->title;
            }
        }

        if ($game_id = $request->input('gameid')) {
            $game = GamesModel::with('relate_game_titles')
                ->find($game_id);

            if ($game && $game->relate_game_titles->count()) {
                $game_title = $game->relate_game_titles[0]->title;
            }
        }

        return view('modules.' . $this->entity_code . '.index', [
            'news_tags'     => $this->news_tags,
            'page_title'    => $page_title ?? __('language.news.all'),
            'param_game_id' => $game_id ? ['gameid' => $game_id] : [],
            'game_title'    => $game_title ?? ''
        ]);
    }

    /**
     * 根据 ID 单独显示某篇新闻，主要用于分享页回调跳转
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }
}
