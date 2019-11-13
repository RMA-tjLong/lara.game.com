<?php

namespace App\Http\Controllers\Modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Tags\NewsTagsModel;

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
        $news_tags = NewsTagsModel::relate(['relate_news_tag_titles'], ['locale_id' => $this->locale_id])
            ->orderByDesc('sort')
            ->get();
        $arr = [
            'comprehensive' => [],
            'others' => []
        ];

        foreach ($news_tags as $i => $news_tag) {
            if ($news_tag['is_comprehensive']) {
                $arr['comprehensive'][] = $news_tag;
            } else {
                $arr['others'][] = $news_tag;
            }
        }

        $this->news_tags = $arr;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('modules.' . $this->entity_code . '.index', [
            'news_tags' => $this->news_tags,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }
}
