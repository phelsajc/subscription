<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class PlansSeeder extends Seeder
{
    public function run()
    {
        DB::table('plans')->insert([
            [
                'name' => 'Basic Plan',
                'price' => 10,
            ],
            [
                'name' => 'Advance Plan',
                'price' => 45,
            ],
            [
                'name' => 'Exclusive',
                'price' => 199,
            ]
        ]);
    }
}
