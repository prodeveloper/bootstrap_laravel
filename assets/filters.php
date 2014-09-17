<?php

Route::filter('sentry.auth', function()
{
    if(!Sentry::check()){
        return  Redirect::guest('/login'); 
    }
   
});
Route::filter('sentry.local',function(){
   if(!(App::environment()=='local')){
       return  Redirect::guest('/login');
   }
});
