<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\User;
use DB;

class UserController extends Controller
{

    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('JWT');
    }

    public function index(Request $request)
    {
        date_default_timezone_set('Asia/Manila');
        $length = 10;
        $start = $request->start ? $request->start : 0;
        $val = $request->searchTerm2;
        if ($val != '' || $start > 0) {
            $data =  DB::connection('mysql')->select("select * from users where name like '%" . $val . "%' or email like '%" . $val . "%' LIMIT $length offset $start");
            $count =  DB::connection('mysql')->select("select * from users where name like '%" . $val . "%' or email like '%" . $val . "%' ");
        } else {
            $data =  DB::connection('mysql')->select("select * from users LIMIT $length");
            $count =  DB::connection('mysql')->select("select * from users ");
        }

        $count_all_record =  DB::connection('mysql')->select("select  count(*) as count from users");

        $data_array = array();

        foreach ($data as $key => $value) {
            $arr = array();
            $arr['id'] =  $value->id;
            $arr['name'] =  $value->name;
            $arr['email'] = $value->email;
            $data_array[] = $arr;
        }
        $page = sizeof($count) / $length;
        $getDecimal =  explode(".", $page);
        $page_count = round(sizeof($count) / $length);
        if (sizeof($getDecimal) == 2) {
            if ($getDecimal[1] < 5) {
                $page_count = $getDecimal[0] + 1;
            }
        }
        $datasets["data"] = $data_array;
        $datasets["count"] = $page_count;
        $datasets["showing"] = "Showing ".(($start+10)-9)." to ".($start+10>$count_all_record[0]->count?$count_all_record[0]->count:$start+10)." of ".$count_all_record[0]->count;
        $datasets["patient"] = $data_array;
        return response()->json($datasets);
    }

    public function store(Request $request)
    {
        date_default_timezone_set('Asia/Manila');
        $p = new User;
        $p->fname = $request->fname;
        $p->lname = $request->lname;
        $p->name = $request->fname. ' '.$request->lname;
        $p->email = $request->email;
        $p->password = Hash::make($request->password);
        $p->save();
        return true;
    }

    public function edit($id)
    {
        $data = User::where(['id' => $id])->first();
        return response()->json($data);
    }

    public function update(Request $request)
    {
        User::where(['id' => $request->id])->update([
            'name' => $request->fname.' '.$request->lname,
            'fname' => $request->fname,
            'lname' => $request->lname,
            'email' => $request->email,
        ]);
        return true;
    }

    public function Delete($id)
    {
        User::where('id', $id)->delete();
        return true;
    }
}


