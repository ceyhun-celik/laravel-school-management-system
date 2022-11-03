<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Log;

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
        Log::channel('custom')->info('Lock timetables');
    }
}
