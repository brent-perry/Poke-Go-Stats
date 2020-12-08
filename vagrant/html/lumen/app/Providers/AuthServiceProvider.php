<?php

namespace App\Providers;

use App\User;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\ServiceProvider;
use Illuminate\Auth\GenericUser;
use DB;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Boot the authentication services for the application.
     *
     * @return void
     */
    public function boot()
    {
        // Here you may define how you wish users to be authenticated for your Lumen
        // application. The callback which receives the incoming request instance
        // should return either a User instance or null. You're free to obtain
        // the User instance via an API token or any other method necessary.
        
        if(session_status() !== PHP_SESSION_ACTIVE)
            session_start();
        

        $this->app['auth']->viaRequest('api', function ($request) 
            {
            if (isset($_SESSION['user_id']))
                {
                $user_id = $_SESSION['user_id'];
                $rows = DB::select('SELECT * FROM `users` WHERE `id` = ?',[$user_id]);
                if (!empty($rows))
                    {
                    $user_info = (array)$rows[0];
                    unset($user_info['password']);
                    return new GenericUser($user_info);
                    }
                }
            return null;
            });
    }
}

