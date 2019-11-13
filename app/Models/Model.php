<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model as BaseModel;
use Illuminate\Database\Eloquent\SoftDeletes;

class Model extends BaseModel
{
    use SoftDeletes;

    protected $dates = ['deleted_at'];
    protected static $locale_id;

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);

        // TODO::用户自定义设置可以设置列表的数据每页所显示的数目
        $this->setPerPage(2);
    }

    /**
     * Begin querying a model with eager loading.
     *
     * @param  array|string  $relations
     * @return \Illuminate\Database\Eloquent\Builder|\Illuminate\Database\Eloquent\Model
     */
    public static function relate($relations, $params = [])
    {
        self::parseRelateParams($params);

        // TODO:当 $params 为字符串时出现bug
        return (new static)->newQuery()->with(
            is_string($relations) ? func_get_args() : $relations
        );
    }

    private static function parseRelateParams($params)
    {
        self::$locale_id = $params['locale_id'] ?? '';
    }
}
