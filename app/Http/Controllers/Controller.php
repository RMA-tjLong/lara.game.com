<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\View\View;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    protected $entityCode;

    /**
     * 公共预处理
     */
    public function __construct()
    {
    	$this->entityCode = strtolower(preg_replace('~Controller(?!.*Controller)~', '', class_basename($this)));

        view()->composer(['modules.*'], function (View $view) {
            $view->with('entityCode', $this->entityCode);
        });
    }
}
