<?php

namespace App\Http\Controllers\Auth;

use Carbon\Carbon;
use Jrean\UserVerification\Traits\VerifiesUsers;
use Jrean\UserVerification\Facades\UserVerification;
use Illuminate\Support\Facades\Mail;
use App\User;

class MailVerificationController
{
    use VerifiesUsers;

    /**
     * 发送验证邮件
     *
     * @param $user
     * @return RedirectResponse
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

        return redirect('/login');
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
            return;
        }

        $users->verification_token = null;
        $users->verified = true;
        $users->verified_at = Carbon::now();
        $users->save();

        session()->flash('success', __('language.auth.verification_success'));
        return redirect('/');
    }
}