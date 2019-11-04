<?php

if (!function_exists('ajax_return_error')) {
    function ajax_return_error($code = 10001, $msg = '')
    {
        if (!$msg) {
            // TODO: $msg 根据 $code 的值来定并返回
        }

        return [
            'status' => 0,
            'msg' => $msg,
            'data' => null
        ];
    }
}

if (!function_exists('ajax_return_success')) {
    function ajax_return_success($data = [])
    {
        return [
            'status' => 1,
            'msg' => '',
            'data' => $data
        ];
    }
}