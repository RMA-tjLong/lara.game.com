<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BaseModel extends Model
{
    use SoftDeletes;

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);

        // TODO::用户自定义设置可以设置列表的数据每页所显示的数目
        $this->setPerPage(2);
    }

    protected $dates = ['deleted_at'];
}
