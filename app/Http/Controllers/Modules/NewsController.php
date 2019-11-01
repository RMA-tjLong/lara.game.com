<?php

namespace App\Http\Controllers\Modules;

use App\Http\Controllers\Controller;
use App\Models\Modules\NewsModel;
use Illuminate\Contracts\Support\Jsonable;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('modules.' . $this->entityCode . '.index');
    }

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
