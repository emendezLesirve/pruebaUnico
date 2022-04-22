<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Articulo extends Model
{
    protected $primaryKey='idarticulo';
    
    public $timestamps=false;
    protected $fillable = ['idcategoria','nombre','precio','descripcion','imagen'];
}
