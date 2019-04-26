<?php

namespace App\Http\Controllers\Api\Peraturan;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\Peraturan\PeraturanResource;
use App\Peraturan;
use Illuminate\Http\Response;
use DB;
use App\Soal;
use App\Nilai;
use Auth;

class PeraturanController extends Controller
{
    public function index()
    {
        return PeraturanResource::collection(Peraturan::latest()->get());
    }

    public function update(Request $request)
    {
        $id = 1;
        $peraturan = Peraturan::find($id);
        $peraturan->update($request->all());
        return response(new PeraturanResource($peraturan), Response::HTTP_OK);
    }


    public function testing()
    {
        $soal = Soal::all();
        return view('testing', compact('soal'));
    }
}
