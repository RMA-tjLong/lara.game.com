<?php

namespace App\Http\Controllers\Modules;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Tags\NewsTagsModel;

class NewsController extends Controller
{

    public function __construct(Request $request)
    {
        parent::__construct($request);

        $news_tags = NewsTagsModel::with('tag_titles')
                ->orderByDesc('sort')
                ->get()->toArray();
        print_r($news_tags);exit;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('modules.' . $this->entity_code . '.index');
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
