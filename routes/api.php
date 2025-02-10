<?php

Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');
    Route::post('addEmployee', 'AuthController@refresh');
});

Route::match(['get','post'],'subscribe','SubscriptionController@create');
Route::get('error_checkout/{id}','SubscriptionController@error_checkout');
Route::match(['get','post'],'subscription_plans','PlansController@index');
Route::get('current_subscription/{id}','SubscriptionController@edit');
Route::get('payment_history','PaymentHistoryController@index');









