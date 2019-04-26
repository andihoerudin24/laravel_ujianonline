<?php

namespace App\Http\Resources\Soal;

use Illuminate\Http\Resources\Json\JsonResource;

class SoalResource extends JsonResource
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
            'id'          => $this->id,
            'soal'        => $this->soal,
            'jawaban_a'   => $this->jawaban_a,
            'jawaban_b'   => $this->jawaban_b,
            'jawaban_c'   => $this->jawaban_c,
            'jawaban_d'   => $this->jawaban_d,
            'knc_jawaban' => $this->knc_jawaban,
            'status'      => $this->status,
        ];
    }
}
