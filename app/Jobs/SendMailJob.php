<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\Mail;

class SendMailJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $bindings;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($bindings)
    {
        $this->bindings = $bindings;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $bindings = $this->bindings;

        Mail::send(
            $bindings['template'],
            $bindings['assign'],
            function ($message) use ($bindings) {
                $message->to($bindings['to'])->subject($bindings['subject']);
            }
        );
    }
}
