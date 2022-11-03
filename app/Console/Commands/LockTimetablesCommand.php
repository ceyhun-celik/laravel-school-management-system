<?php

namespace App\Console\Commands;

use App\Jobs\ResultScoresJob;
use App\Mail\InformStudentsForResultMail;
use App\Models\Role;
use App\Models\Score;
use App\Models\Timetable;
use App\Models\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class LockTimetablesCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'lock:timetables';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'This command lock all timetables';

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        # Result of Scores
        $scores = Score::with(['timetable' => function($timetable){
            $timetable->whereStatus('active');
        }])->whereNull('result')->get();

        foreach ($scores as $score) {
            ResultScoresJob::dispatch($score);
        }

        # Send email to students
        $emails = User::where('role_id', Role::STUDENT)->pluck('email');

        Mail::to($emails)->send(
            new InformStudentsForResultMail()
        );
    }
}
