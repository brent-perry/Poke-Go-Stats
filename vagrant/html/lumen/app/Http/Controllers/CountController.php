<?php 

namespace App\Http\Controllers;

use DB;

define('ERROR_NOT_FOUND', 1);

class CountController extends Controller
    {
        public function getIdCount($id)
            {
            $results = DB::select('SELECT COUNT(*) AS `Id` FROM `pokemon` WHERE `id` = ?',[$id]);
            if (empty($results))
                return response()->json(['error' =>'Not found', 'code' =>ERROR_NOT_FOUND]);
            $pokemon = $results[0] -> Name;
            return response()->json(
                [
                    'status' => 'ok',
                    'ID' => $pokemon
                ]);
            }

        public function getNameCount($name)
            {
            $results = DB::select('SELECT COUNT(*) AS `Name` FROM `pokemon` WHERE `name` = ?',[$name]);
            if (empty($results))
                return response()->json(['error' =>'Not found', 'code' =>ERROR_NOT_FOUND]);
            $pokemon = $results[0] -> Name;
            return response()->json(
                [
                    'status' => 'ok',
                    'Name' => $pokemon
                ]);
            }

        public function getTypeCount($type)
            {
            $results = DB::select('SELECT COUNT(*) AS `Type` FROM `pokemon` WHERE `type` = ?',[$type]);
            if (empty($results))
                return response()->json(['error' =>'Not found', 'code' =>ERROR_NOT_FOUND]);
            $pokemon = $results[0] -> Type;
            return response()->json(
                [
                    'status' => 'ok',
                    'Type' => $pokemon
                ]);
            }

        public function getFastMoveCount($fastMove)
            {
            $results = DB::select('SELECT COUNT(*) AS `FastMove` FROM `pokemon` WHERE `fast_move` = ?',[$fastMove]);
            if (empty($results))
                return response()->json(['error' =>'Not found', 'code' =>ERROR_NOT_FOUND]);
            $pokemon = $results[0] -> FastMove;
            return response()->json(
                [
                    'status' => 'ok',
                    'FastMove' => $pokemon
                ]);
            }

        public function getChargeMoveCount($chargeMove)
            {
            $results = DB::select('SELECT COUNT(*) AS `ChargeMove` FROM `pokemon` WHERE `charge_move` = ?',[$chargeMove]);
            if (empty($results))
                return response()->json(['error' =>'Not found', 'code' =>ERROR_NOT_FOUND]);
            $pokemon = $results[0] -> ChargeMove;
            return response()->json(
                [
                    'status' => 'ok',
                    'ChargeMove' => $pokemon
                ]);
            }
    }