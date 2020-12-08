<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;
use DB;

define('ERROR_BOOK_NOT_FOUND', 1);
class Controller extends BaseController
    {
    public function get($isbn)
        {
        $results = DB::select('SELECT * FROM `books` WHERE `isbn` = ? LIMIT 1',[$isbn]);
        if (empty($results))
            return response()->json(['error' =>'Book not found', 'code' =>ERROR_BOOK_NOT_FOUND]);
        $book = $results[0];
        return response()->json(
            [
                'status' => 'ok',
                'book' => $book
            ]);
        }
    }
    
