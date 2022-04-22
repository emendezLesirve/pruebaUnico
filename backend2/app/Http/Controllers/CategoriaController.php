<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;


class CategoriaController extends Controller
{

    public function index()
    {
        return Categoria::all();
    }

    public function show(Categoria $categoria)
    {
        return $categoria;
    }

    public function store(Request $request)
    {
        $categoria = Categoria::create($request->all());

        return response()->json($categoria, 201);
    }

    public function update(Request $request, Categoria $categoria)
    {
        $categoria->update($request->all());

        return response()->json($categoria, 200);
    }

    public function delete(Categoria $categoria)
    {
        $categoria->delete();

        return response()->json(null, 204);
    }
}
/*
class CategoriaController extends Controller
{

    public function index()
    {  
     
        return response()->json(Categoria::all(),200);     
    }

    public function show($categoria)
    {
        return $categoria;
       // return Categoria::where('idcategoria', $categoria)->get();
    }

    public function store(Request $request)
    {
        $categoria=new Categoria;
        $categoria->nombre=$request->get('nombre');
        $categoria->descripcion=$request->get('descripcion');
        $categoria->condicion='1';
        $categoria->save();

        return response()->json($categoria, 201);
    }

    public function update(Request $request, $id)
    {
     /*   $categoria=Categoria::find($id);
        if(is_null($categoria)){
            return response()->json(['message'=>'categoria no encontrado'],404);
        }
       $categoria->update($request->all());
        return response($categoria,200);*/
  /*      $id->update($request->all());

        return response()->json($id, 200);
  
    }

    public function delete(Request $request, $id)
    {
        $categoria=Categoria::find($id);
        if(is_null($categoria)){
          return response()->json(['message'=>'categoria no encontrado'],404);
      }
      $categoria->delete();
      return response()->json(null,204);
    }
  

}*/
