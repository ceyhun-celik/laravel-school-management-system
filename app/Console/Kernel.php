<?php

namespace App\Console;

use App\Models\System;
use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        // $schedule->command('inspire')->hourly();

        $schedule->command('lock:timetables')->timezone('Europe/Istanbul')->cron(self::cronLockTimetables());
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }

    /**
     * Set cron time of lock timetables
     */
    protected function cronLockTimetables()
    {
        $system = System::first();
        
        $timestamp = strtotime($system->lock_timetables);

        $day = date('d', $timestamp);
        $month = date('m', $timestamp);
        $hour = date('H', $timestamp);
        $minute = date('i', $timestamp);

        return  "{$minute} {$hour} {$day} {$month} *";
    }
}
