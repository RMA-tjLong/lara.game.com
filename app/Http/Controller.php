<?php

namespace App\Http;

use App\Models\LanguagesModel;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected $locale_id;

    /**
     * Execute an action on the controller.
     *
     * @param  string  $method
     * @param  array   $parameters
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function callAction($method, $parameters)
    {
        if (method_exists($this,'beforeAction')) call_user_func_array([$this, 'beforeAction'], ['action' => $method]);
        $return = call_user_func_array([$this, $method], $parameters);
        if (method_exists($this,'afterAction')) call_user_func_array([$this, 'afterAction'], ['action' => $method]);

        return $return;
    }

    public function setLocaleId()
    {
        $lang = request()->input('lang') ? : \App::getLocale();
        $this->locale_id = LanguagesModel::where('code', $lang)->first()->id;
    }
}
