<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Nilai extends Model
{
    protected $guarded = ['id'];
    protected $table = "table_nilais";

    public function user()
    {
        return $this->belongsTo('App\User', 'id_user', 'id');
    }
}
