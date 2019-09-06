<?php

namespace App\Http\Controllers\Auth;

use Carbon\Carbon;
use Jrean\UserVerification\Traits\VerifiesUsers;
use Jrean\UserVerification\Facades\UserVerification;
use Illuminate\Support\Facades\Mail;
use App\User;

class VerificateMailController
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
            'app_name' => config('app.name'),
        ];

        $to = $user->email;
        $subject = __('language.email.verified_subject_1') . env('APP_NAME', 'laravel') . __('language.email.verified_subject_2');

        Mail::send(
            'email.signUpEmailVerification',
            ['data' => $data],
            function ($message) use ($to, $subject) {
                $message->to($to)->subject($subject);
            }
        );

        // session()->flash('verification_warning', __('language.auth.verification_warning'));
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
            // session()->flash('verification_error', __('language.auth.verification_error'));
            return redirect('/login');
        }

        $users->verification_token = null;
        $users->verified = true;
        $users->verified_at = Carbon::now();
        $users->save();

        // session()->flash('verification_success', __('language.auth.verification_success'));
        return redirect('/');
    }
}