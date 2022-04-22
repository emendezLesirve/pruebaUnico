<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Articulo;
use DB;



class ArticuloController extends Controller
{

    public function index()
    {

        return Articulo::all();
    }

    public function show(Articulo $articulo)
    {
        return $articulo;
    }

    public function store(Request $request)
    {
        $articulo = Articulo::create($request->all());

        return response()->json($articulo, 201);
    }

    public function update(Request $request, Articulo $articulo)
    {
        $articulo->update($request->all());

        return response()->json($articulo, 200);
    }

    public function delete(Articulo $articulo)
    {
        $articulo->delete();

        return response()->json(null, 204);
    }
}


