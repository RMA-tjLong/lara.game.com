<?php
namespace App\Services;

use Illuminate\View\View;

class ModuleComposerService
{
    public function __construct()
    {
    }

    public function compose(View $view)
    {
        $view->with([]);
    }
}