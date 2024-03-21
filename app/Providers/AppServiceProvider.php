<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Repositories\PostRepository;
use App\Services\PostService;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(PostRepository::class, function ($app) {
            return new PostRepository();
        });

        $this->app->bind(PostService::class, function ($app) {
            return new PostService($app->make(PostRepository::class));
        });
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
