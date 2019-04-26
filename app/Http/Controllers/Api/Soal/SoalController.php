<?php

namespace App\Http\Controllers\Api\Soal;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\Soal\SoalResource;
use App\Soal;
use Illuminate\Http\Response;

class SoalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return SoalResource::collection(Soal::where('status', 'Aktif')->latest()->get());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $soal = Soal::create($request->all());
        return response(new SoalResource($soal), Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Soal $soal)
    {
        return new SoalResource($soal);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $soal = Soal::find($id);
        $soal->update($request->all());
        return response(new SoalResource($soal), Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Soal $soal)
    {
        $soal->delete();
        return response('Deleted', Response::HTTP_OK);
    }

    public function status(Request $request, Soal $soal)
    {
        $soal->update([
            'status' => $request->status,
        ]);
        return response('Updated', Response::HTTP_OK);
    }
}
