<?php 

namespace App\Http\Controllers;

use DB;
use Illuminate\Http\Request;

define('ERROR_ID_NOT_FOUND', 1);
define('ERROR_NAME_NOT_FOUND', 2);
define('ERROR_TYPE_NOT_FOUND', 3);
define('ERROR_FAST_MOVE_NOT_FOUND', 4);
define('ERROR_CHARGE_MOVE_NOT_FOUND', 5);
define('ERROR_DPS_NOT_FOUND', 6);
define('ERROR_TOTAL_NOT_FOUND', 7);
define('ERROR_JSON_NOT_FOUND', 8);
define('ERROR_PARAM_NOT_FOUND', 9);
define('ERROR_JSON_EXPECTED',10);
define('ERROR_INVALID_TOKEN',11);
define('ERROR_MISSING_KEYS',12);


class PokemonController extends Controller
    {
        public function getId($id)
        {
        $idEncode = urldecode($id);
        $idSearch = $idEncode."%";
        $results = DB::select('SELECT * FROM `pokemon` WHERE `id` LIKE ?',[$idSearch]);
        if (empty($results))
            return response()->json(['error' =>'ID not found', 'code' =>ERROR_ID_NOT_FOUND]);
        $pokemon = $results;
        return response()->json(
            [
                'status' => 'ok',
                'Pokemon' => $pokemon
            ]);
        }

    public function getName($name)
        {
        $nameEncode = urldecode($name);
        $nameSearch = $nameEncode."%";
        $results = DB::select('SELECT * FROM `pokemon` WHERE `name` LIKE ?',[$nameSearch]);
        if (empty($results))
            return response()->json(['error' =>'Name not found', 'code' =>ERROR_NAME_NOT_FOUND]);
        $pokemon = $results;
        return response()->json(
            [
                'status' => 'ok',
                'Pokemon' => $pokemon
            ]);
        }

    public function getType($type)
        {
        $typeEncode = urldecode($type);
        $typeSearch = $typeEncode."%";
        $results = DB::select('SELECT * FROM `pokemon` WHERE `type` LIKE ?',[$typeSearch]);
        if (empty($results))
            return response()->json(['error' =>'Type not found', 'code' =>ERROR_TYPE_NOT_FOUND]);
        $pokemon = $results;
        return response()->json(
            [
                'status' => 'ok',
                'Pokemon' => $pokemon
            ]);
        }

    public function getFastMove($fastMove)
        {
        $fastMoveEncode = urldecode($fastMove);
        $fastMoveSearch = "%".$fastMoveEncode."%";
        $results = DB::select('SELECT * FROM `pokemon` WHERE `fast_move` LIKE ?',[$fastMoveSearch]);
        if (empty($results))
            return response()->json(['error' =>'Fast move not found', 'code' =>ERROR_FAST_MOVE_NOT_FOUND]);
        $pokemon = $results;
        return response()->json(
            [
                'status' => 'ok',
                'Pokemon' => $pokemon
            ]);
        }

    public function getChargeMove($chargeMove)
        {
        $chargeMoveEncode = urldecode($chargeMove);
        $chargeMoveSearch = "%".$chargeMoveEncode."%";
        $results = DB::select('SELECT * FROM `pokemon` WHERE `charge_move` LIKE ?',[$chargeMoveSearch]);
        if (empty($results))
            return response()->json(['error' =>'Charge move not found', 'code' =>ERROR_CHARGE_MOVE_NOT_FOUND]);
        $pokemon = $results;
        return response()->json(
            [
                'status' => 'ok',
                'Pokemon' => $pokemon
            ]);
        }

    public function getDps($dps)
        {
        $dpsEncode = urldecode($dps);
        $dpsSearch = $dpsEncode."%";
        $results = DB::select('SELECT * FROM `pokemon` WHERE `dps` LIKE ?',[$dpsSearch]);
        if (empty($results))
            return response()->json(['error' =>'DPS not found', 'code' =>ERROR_DPS_NOT_FOUND]);
        $pokemon = $results;
        return response()->json(
            [
                'status' => 'ok',
                'Pokemon' => $pokemon
            ]);
        }

    public function getTotal($total)
        {
        $totalEncode = urldecode($total);
        $totalSearch = $totalEncode."______%";//to search only the total above 1000
        $results = DB::select('SELECT * FROM `pokemon` WHERE `total` LIKE ?',[$totalSearch]);
        if (empty($results))
            return response()->json(['error' =>'Total not found', 'code' =>ERROR_TOTAL_NOT_FOUND]);
        $pokemon = $results;
        return response()->json(
            [
                'status' => 'ok',
                'Pokemon' => $pokemon
            ]);
        }

    //SEARCH ANYTHING
    public function search(Request $request)
        {
        if (!$request->json())
            return response()->json(['error' => 'Search API only accepts JSON', 'code' =>ERROR_JSON_NOT_FOUND]);
        $object = ['status' => 'ok'];

        $specifiers = $request->json('specifiers',null);
        $search = '%'.$request->json('search',false).'%';
        $limit = $request->json('limit',300);
        $hasType = $request->json('hasType',null);

        if(!is_array($specifiers) || empty($specifiers) || empty($search))
            return response()->json(['error' => 'Search API missing Paramaters', 'code' =>ERROR_PARAM_NOT_FOUND]);

            if ($limit <= 0)
                $limit = 1;
            elseif ($limit > 100)
                $limit = 100;

            $query = 'SELECT * FROM `pokemon` WHERE ';

            $where =[];
            $whereValues = [];
            foreach ($specifiers as $specifier)
                {
                if ($specifier === 'name' || $specifier === 'type' || $specifier === 'fast_move' || $specifier === 'charge_move' || $specifier === 'dps' || $specifier === 'total' || $specifier === 'id')
                    {
                    $where[] = '`'.$specifier.'` LIKE ?';
                    $whereValues[] = $search;
                    }
                }

            $query.= implode(' OR ',$where);

            $query.= ' LIMIT ' .$limit;

            $result = DB::select($query,$whereValues);

            $object['result'] = $result;
        
        return response()->json($object);
        }

        //INPUT DATA INTO DATABASE 
        public function addPokemon(Request $request)
        {
        if (!$request->isJson())
            return response()->json(['error'=>'Add API only accepts JSON', 'code'=>ERROR_JSON_EXPECTED]);

        $accessToken = $request->json('token', null);

        $result = DB::select('SELECT * FROM `api_access_token` WHERE `access_token` = ? AND `revoked` = 0',[$accessToken]);

        if (empty($result))
            return response()->json(['error'=>'Token invalid or revoked', 'code'=>ERROR_INVALID_TOKEN]);

        $entry = $request->json('entry', null);

        if (!is_array($entry))
            return response()->json(['error'=>'Entry should be an object', 'code'=>ERROR_PARAM_NOT_FOUND]);

        $whitelist = ['name','type','id','fast_move','charge_move','dps','total'];

        foreach ($entry as $key => $value)
            {
            if (!in_array($key,$whitelist))
                return response()->json(['error'=>'invalid entry key "'.$key.'"', 'code'=>ERROR_PARAM_NOT_FOUND]);
            }

        if(count($whitelist) !== count($entry))
            return response()->json(['error' => 'Missing keys','code' => ERROR_MISSING_KEYS]);

        $result = DB::table('pokemon')->insert($entry);
        
        if ($result)
            return response()->json(['status' => 'ok']);
        return response()->json(['status' => 'failed']);
        }
    }

