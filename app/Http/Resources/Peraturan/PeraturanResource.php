<?php

namespace App\Http\Resources\Peraturan;

use Illuminate\Http\Resources\Json\JsonResource;

class PeraturanResource extends JsonResource
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
            'id'              => $this->id,
            'nama_ujian'      => $this->nama_ujian,
            'waktu'           => $this->waktu,
            'nilai_min'       => $this->nilai_min,
            'peraturan_ujian' => $this->peraturan_ujian
        ];
    }
}
