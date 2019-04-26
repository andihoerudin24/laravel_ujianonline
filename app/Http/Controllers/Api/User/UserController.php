<?php

namespace App\Http\Controllers\Api\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\user\UserResource;
use App\User;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Response as IlluminateResponse;
use App\Nilai;


class UserController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return UserResource::collection(User::latest()->get());
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = User::create($request->all());
        return response(new UserResource($user), Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return new UserResource($user);
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
        $user = User::find($id);
        $user->update($request->all());
        return response(new UserResource($user), Response::HTTP_CREATED);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $user->delete();
        return response('Deleted', Response::HTTP_OK);
    }

    public function login(Request $request)
    {
        //return $request->all();
        if (!Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            //gagal login
            return Response::json([
                'status' => [
                    'code' => 401,
                    'description' => 'Credential is wrong',
                ],
            ], 401);
        }
        $loginUser = Auth::user();

        return (new UserResource($loginUser))->additional([
            'status' => [
                'code' => 202,
                'description' => 'ok',
            ],
        ])->response()->setStatusCode(202);
    }

    public function logout($iduser)
    {
        $user = User::find($iduser);

        if ($user == null) {
            return Response::json([
                'status' => [
                    'code' => 400,
                    'description' => 'bad request !',
                ],
            ], 400);
        }
        Auth::logout();

        return  IlluminateResponse::json([
            'status' => [
                'code' => 200,
                'description' => 'Logout Success',
            ],
        ], 200);
    }

    public function total()
    {
        // $siswa = Nilai::where('')
    }
}
