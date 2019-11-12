<?php

namespace App\Http\Controllers;

use App\Http\Controller as BaseController;
use Illuminate\Http\Request;
use Illuminate\View\View;

class Controller extends BaseController
{
    protected $entity_code;

    /**
     * 公共预处理
     */
    public function __construct(Request $request)
    {
    	$this->entity_code = strtolower(preg_replace('~Controller(?!.*Controller)~', '', class_basename($this)));

        view()->composer(['modules.*'], function (View $view) {
            $view->with([
                'entity_code' => $this->entity_code
            ]);
        });
    }
}
