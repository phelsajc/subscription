<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Model\Stores;
use DB;

class StoresController extends Controller
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
        $user = auth()->id();
        if ($val != '' || $start > 0) {
            $data =  DB::connection('mysql')->select("select * from stores where (title like '%" . $val . "%' or description like '%" . $val . "%') and created_by = $user LIMIT $length offset $start");
            $count =  DB::connection('mysql')->select("select * from stores where (title like '%" . $val . "%' or description like '%" . $val . "%') and created_by = $user ");
        } else {
            $data =  DB::connection('mysql')->select("select * from stores where (title like '%" . $val . "%' or description like '%" . $val . "%')and created_by = $user LIMIT $length");
            $count =  DB::connection('mysql')->select("select * from stores where created_by = $user");
        }

        $count_all_record =  DB::connection('mysql')->select("select  count(*) as count from stores");

        $data_array = array();

        foreach ($data as $key => $value) {
            $arr = array();
            $arr['id'] =  $value->id;
            $arr['title'] =  $value->title;
            $arr['description'] = $value->description;
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
        $p = new Stores;
        $p->title = $request->title;
        $p->description = $request->description;
        $p->created_by = auth()->id();
        $p->created_dt = date("Y-m-d");
        $p->save();
        return true;
    }

    public function edit($id)
    {
        $data = Stores::where(['id' => $id])->first();
        return response()->json($data);
    }

    public function update(Request $request)
    {
        Stores::where(['id' => $request->id])->update([
            'title' => $request->title,
            'description' => $request->description,
        ]);
        return true;
    }

    public function Delete($id)
    {
        Stores::where('id', $id)->delete();
        return true;
    }
}


