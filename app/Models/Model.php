<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as BaseModel;
use Illuminate\Database\Eloquent\SoftDeletes;

class Model extends BaseModel
{
    use SoftDeletes;

    protected $dates = ['deleted_at'];
    public static $locale_id;

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);

        // TODO::用户自定义设置可以设置列表的数据每页所显示的数目
        $this->setPerPage(2);
    }
}
