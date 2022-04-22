<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    protected $primaryKey='idcategoria';
    public $timestamps=false;
    protected $fillable = ['nombre','descripcion','condicion'];
}
