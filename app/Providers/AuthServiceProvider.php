<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use App\Models\User;
use Illuminate\Support\ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */


    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        // $this->registerPolicies();
        //
        Gate::define('isAdmin', function(User $user){
            return $user->role == 'admin';
        });

        Gate::define('isUser', function(User $user){
            return $user->role == 'user';
        });

        Gate::define('isEditor', function(User $user){
            return $user->role == 'editor';
        });
    }
}
