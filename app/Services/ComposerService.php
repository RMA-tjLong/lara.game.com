<?php
namespace App\Services;

use App\Models\LanguagesModel;
use Illuminate\View\View;

class ComposerService
{
    public function __construct()
    {
    }

    public function compose(View $view)
    {
        $languages = LanguagesModel::all();

        $view->with([
            'languages' => $languages
        ]);
    }
}