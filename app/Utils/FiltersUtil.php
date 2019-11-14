<?php

namespace App\Utils;

use Carbon\Carbon;

class FiltersUtil
{
    public static function parseFilters($data = [])
    {
        $data = [
            'time'  => self::parseArchives($data),
            'tag'   => $data['tag'] ?? '',
        ];

        return $data;
    }

    private static function parseArchives($data = [])
    {
        $time = [];

        if (isset($data['year'])) {
            if ($data['year'] == date('Y') && isset($data['month'])) {
                // 筛选当年指定某月的存档
                $time = [
                    Carbon::create($data['year'], $data['month'], 1, 0, 0, 0),
                    Carbon::create($data['year'], $data['month'], 31, 23, 59, 59),
                ];
            } else {
                // 筛选指定年的存档
                $time = [
                    Carbon::create($data['year'], 1, 1, 0, 0, 0),
                    Carbon::create($data['year'], 12, 31, 23, 59, 59),
                ];
            }
        }

        return $time;
    }
}
