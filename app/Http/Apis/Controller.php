<?php

namespace App\Http\Apis;

use Illuminate\Http\Request;
use App\Http\Controller as BaseController;

class Controller extends BaseController
{
    public function __construct(Request $request)
    {
        parent::__construct($request);
    }
}
