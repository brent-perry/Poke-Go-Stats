<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
use Illuminate\Http\Request;

$router->get('/',function() use ($router) {
    return $router->app->version();
    });

//TO VIEW MAIN PAGES
$router->get('/pokemon',['as' => 'home', function() use ($router)
    {
    return view('pokemon.pages.home');
    }]);

$router->get('/pokemon/pokemonDisplayData',['as' => 'display', function() use ($router)
    {
    return view('pokemon.pages.pokemonDisplayData');
    }]);

//GET SEARCH API
$router->get('api/get/id/{id}',['uses' => 'PokemonController@getId']);
$router->get('api/get/name/{name}',['uses' => 'PokemonController@getName']);
$router->get('api/get/type/{type}',['uses' => 'PokemonController@getType']);
$router->get('api/get/fastMove/{fastMove}',['uses' => 'PokemonController@getFastMove']);
$router->get('api/get/chargeMove/{chargeMove}',['uses' => 'PokemonController@getChargeMove']);
$router->get('api/get/dps/{dps}',['uses' => 'PokemonController@getDps']);
$router->get('api/get/total/{total}',['uses' => 'PokemonController@getTotal']);

$router->get('api/display', ['uses' => 'DisplayDataController@getDisplayData']);

$router->get('api/idCount/{id}', ['uses' => 'CountController@getIdCount']);
$router->get('api/nameCount/{name}', ['uses' => 'CountController@getNameCount']);
$router->get('api/typeCount/{type}', ['uses' => 'CountController@getTypeCount']);
$router->get('api/fastMoveCount/{fastMove}', ['uses' => 'CountController@getFastMoveCount']);
$router->get('api/chargeMoveCount/{chargeMove}', ['uses' => 'CountController@getChargeMoveCount']);

//POST SEARCH API
$router->post('/api/search',['uses' => 'PokemonController@search']);

//DISPLAY LIST OF POKEMON 
$router->get('/pokemonDisplayData', function()
    {
    return view('pokemon.pages.pokemonDisplayData');
    });

//ADD NEW POKEMON INTO DATABASE
$router->post('api/add',['uses' => 'PokemonController@addPokemon']);