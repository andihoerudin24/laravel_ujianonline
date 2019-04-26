<?php

namespace App\Http\Resources\Hasil;

use Illuminate\Http\Resources\Json\JsonResource;

class HasilResource extends JsonResource
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
            'id' => $this->id,
            'Nama' => $this->user->name,
            'Benar' => $this->benar,
            'Salah' => $this->salah,
            'Kosong' => $this->kosong,
            'Nilai' => $this->nilai,
            'tanggal' => $this->created_at
        ];
    }
}
