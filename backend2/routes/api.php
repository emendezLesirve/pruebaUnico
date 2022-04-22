<?php

use App\Http\Controllers\usuarioController;
use App\Http\Controllers\ArticuloController;
use App\Http\Controllers\CategoriaController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/usuarios',[usuarioController::class, 'index']);
Route::get('/usuarios/{id}',[usuarioController::class, 'show']);
Route::post('/usuarios',[usuarioController::class, 'store']);
//Route::put('/usuarios/{id}',[usuarioController::class, 'edit']);
Route::put('/usuarios/{id}',[usuarioController::class, 'updateStatu']);
Route::delete('/usuarios/{id}',[usuarioController::class, 'destroy']);


Route::get('/articulos',[ArticuloController::class, 'index']);
Route::get('/articulos/{articulo}',[ArticuloController::class, 'show']);
Route::post('/articulos',[ArticuloController::class, 'store']);
Route::put('/articulos/{articulo}',[ArticuloController::class, 'update']);
Route::delete('/articulos/{articulo}',[ArticuloController::class, 'delete']);


Route::get('/categorias',[CategoriaController::class, 'index']);

