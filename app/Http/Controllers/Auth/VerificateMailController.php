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
        ];

        $bindings = [
            'template'  => 'email.signUpEmailVerification',
            'to'        => $user->email,
            'subject'   => __('language.email.verified_subject_1') . env('APP_NAME', 'laravel') . __('language.email.verified_subject_2'),
            'assign'    => ['data' => $data]
        ];

        // 调用队列发送注册验证邮件
        SendMailJob::dispatch($bindings);
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
            return redirect('/login');
        }

        $users->verification_token = null;
        $users->verified = true;
        $users->verified_at = Carbon::now();
        $users->save();

        return redirect('/');
    }
}