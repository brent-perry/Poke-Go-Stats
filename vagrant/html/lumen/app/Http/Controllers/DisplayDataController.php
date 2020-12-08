<?php 

namespace App\Http\Controllers;

use DB;

define('ERROR_NOT_FOUND', 1);

class DisplayDataController extends Controller
    {
        public function getDisplayData()
        {
        $results = DB::select('SELECT * FROM `pokemon` ORDER BY `type` ASC LIMIT 300');
        if (empty($results))
            return response()->json(['error' =>'Not found', 'code' =>ERROR_NOT_FOUND]);
        $pokemon = $results;
        return response()->json(
            [
                'status' => 'ok',
                'Pokemon' => $pokemon
            ]);
        }
    }