<?php

namespace App\Http\Controllers\Auth;

use Jrean\UserVerification\Traits\VerifiesUsers;
use Jrean\UserVerification\Facades\UserVerification;
use Illuminate\Support\Facades\Mail;

class AuthController
{
    use VerifiesUsers;

    /**
     * 发送验证邮件
     *
     * @param $user
     */
    public function sendVerificationEmail($user)
    {
        // 生成用户的验证token
        UserVerification::generate($user);

        // 给用户发认证邮件
        $data = [
            'verification_link' => url('verification', $user->verification_token) . '?email=' . urlencode($user->email),
            'name' => $user->name,
            'about_link' => url('about'),
            'app_name' => env('APP_NAME', 'laravel'),
        ];

        $to = $user->email;
        $subject = 'Welcome to ' . env('APP_NAME', 'laravel') . '! Confirm Your Email';

        Mail::send(
            'email.signUpEmailVerification',
            ['data' => $data],
            function ($message) use ($to, $subject) {
                $message->to($to)->subject($subject);
            }
        );
    }

    /**
     * 验证邮箱和token
     *
     * @param $token
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function verification($token)
    {
        $user = User::where('verification_token',$token)->first();
        // $user->verified_at = ;
        $user->verification_token = null;
        $user->save();

        session()->flash('success', '恭喜您，邮箱验证成功！');
        return redirect('https://XXX.com');
    }
}