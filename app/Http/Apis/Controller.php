<?php

namespace App\Http\Apis;

use App\Models\LanguagesModel;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected $locale_id;

    public function __construct(Request $request)
    {
        $this->locale_id = $request->get('lang') ? LanguagesModel::getLocaleId($request->get('lang')) : '';
    }
}
