<?php

namespace App\Http\Controllers\Api\Hasil;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\Hasil\HasilResource;
use App\Nilai;
use App\User;
use Illuminate\Support\Facades\Response;
use App\Soal;

class HasilController extends Controller
{
    public function index(){
        return HasilResource::collection(Nilai::latest()->get());
    }
    public function dashboard()
    {
      $lulus=Nilai::where('keterangan','LULUS')->count();
      $Tidak=Nilai::where('keterangan','TIDAK LULUS')->count();
      $user=User::all()->count();
      $soal=Soal::all()->count();
      return Response::json([
         'data'=>[
            'lulus'=>$lulus,
            'Tidak Lulus'=>$Tidak,
            'user'=>$user,
            'total_soal'=>$soal
         ]
         ],202);

    }
}
