<?php

namespace App\Http;

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
        $lang = $request->input('lang') ? : \App::getLocale();
        $this->locale_id = LanguagesModel::getLocaleId($lang);
    }
}
