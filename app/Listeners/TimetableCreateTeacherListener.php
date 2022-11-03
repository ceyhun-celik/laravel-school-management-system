<?php

namespace App\Listeners;

use App\Events\TimetableCreateEvent;
use App\Mail\TeacherTimetableCreateMail;
use App\Models\User;
use App\Notifications\TimetableCreateTeacherNotification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class TimetableCreateTeacherListener 
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle(TimetableCreateEvent $event)
    {
        $user = User::find($event->create->teacher->user->id);

        Log::channel('custom')->info($event->create);
        
        $user->notify(new TimetableCreateTeacherNotification($event->create));
    }
}
