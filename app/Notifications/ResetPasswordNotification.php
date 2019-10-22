<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class ResetPasswordNotification extends Notification implements ShouldQueue
{
    use Queueable;

    public $token;
    public $lang;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($token, $lang)
    {
        $this->token = $token;
        $this->lang = $lang;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)
                    ->template('notifications::reset-password')
                    ->subject(__('language.email.reset_password_subject', [], $this->lang))
                    ->line(__('language.email.reset_password_1st_line', [], $this->lang))
                    ->action('', url(config('app.url').route('password.reset', $this->token, false)))
                    ->line(__('language.email.reset_password_2nd_line', [], $this->lang))
                    ->line(__('language.email.reset_password_3rd_line', [], $this->lang));
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
