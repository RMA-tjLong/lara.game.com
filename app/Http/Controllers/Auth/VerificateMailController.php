<?php

namespace App\Http\Controllers\Auth;

use App\Jobs\SendMailJob;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Jrean\UserVerification\Traits\VerifiesUsers;
use Jrean\UserVerification\Facades\UserVerification;
use App\User;

class VerificateMailController
{
    use VerifiesUsers;

    /**
     * 发送验证邮件
     *
     * @param $user
     */
    public function sendVerificationEmail($user)
    {
        if ($user->verified) return;

        // 生成用户的验证token
        UserVerification::generate($user);

        // 给用户发认证邮件
        $data = [
            'verification_link' => url('verification', $user->verification_token) . '?email=' . urlencode($user->email),
            'name' => $user->name,
            'about_link' => url('about'),
            'app_name' => config('app.name'),
            'lang' => \App::getLocale()
        ];

        $bindings = [
            'template'  => 'email.signup-email-verification',
            'to'        => $user->email,
            'subject'   => __('language.email.verified_subject'),
            'assign'    => ['data' => $data]
        ];

        // 调用队列发送注册验证邮件
        SendMailJob::dispatch($bindings);

        // session存储发送成功信息
        session()->put('success', __('language.warning.send_success'));
    }

    /**
     * 重新发送验证邮件
     *
     * @param  \Illuminate\Http\Request  $request
     * @return RedirectResponse
     */
    public function resendVerificateMail(Request $request) {
        $this->validateRequest($request);
        $res = User::where('email', $request->input('email'))->first();
        $this->sendVerificationEmail($res);

        return redirect('/');
    }

    /**
     * 验证邮箱和token
     *
     * @param $token
     * @return RedirectResponse
     */
    public function getVerification($token)
    {
        $users = User::where('verification_token', $token)->first();

        if (!$users) {
            // 存储错误信息
            session()->put('error', __('language.warning.invalid_token'));
            return redirect('/login');
        }

        $users->verification_token = null;
        $users->verified = true;
        $users->verified_at = Carbon::now('Asia/Shanghai');
        $users->save();

        session()->put('success', __('language.warning.validate_success'));
        return redirect('/');
    }
}