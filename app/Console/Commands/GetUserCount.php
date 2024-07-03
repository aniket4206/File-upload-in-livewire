<?php

namespace App\Console\Commands;

use App\Models\User;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;


class GetUserCount extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'db:get_user_count';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Get User Count';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        //
        $count = User::count();
        $this->info("User count is $count");
    }
}
