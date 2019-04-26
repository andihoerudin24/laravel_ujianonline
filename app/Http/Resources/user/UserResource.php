<?php

namespace App\Http\Resources\user;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id'            => $this->id,
            'username'      => $this->username,
            'name'          => $this->name,
            'jenis_kelamin' => $this->jenis_kelamin,
            'status'        => $this->status,
            'kelas'         => $this->kelas,
            'nik'           => $this->nik,
        ];
    }
}
