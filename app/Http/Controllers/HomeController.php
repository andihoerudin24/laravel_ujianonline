<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;
use App\Peraturan;
use App\Nilai;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        return view('home');
    }
    public function store(Request $request)
    {
        $pilihan     = $request->pilihan;
        $id_soal     = $request->id;
        $jumlah      = $request->jumlah;

        $score = 0;
        $benar = 0;
        $salah = 0;
        $kosong = 0;
        for ($i = 0; $i < $jumlah; $i++) {
            //id nomor soal
            $nomor = $id_soal[$i];

            //jika user tidak memilih jawaban
            if (empty($pilihan[$nomor])) {
                $kosong++;
            } else {
                //jawaban dari user
                $jawaban = $pilihan[$nomor];
                //cocokan jawaban user dengan jawaban di database
                $query = DB::table('table_soals')
                    ->where('id', '=', $nomor)
                    ->where('knc_jawaban', '=', $jawaban)
                    ->count();
                if ($query) {
                    //jika jawaban cocok (benar)
                    $benar++;
                } else {
                    //jika salah
                    $salah++;
                }
            }
            $jumlah_soal = DB::table('table_soals')
                ->where('status', '=', 'Aktif')->count();
            $score = 100 / $jumlah_soal * $benar;
            $hasil = number_format($score, 1);
        }
        $qry = Peraturan::select('nilai_min')->first();
        $ceknilai = $qry->nilai_min;
        if ($hasil > $ceknilai) {
            $dat = [
                'id_user' => Auth::user()->id,
                'benar' => $benar,
                'salah' => $salah,
                'kosong' => $kosong,
                'score' => $hasil,
                'keterangan' => 'LULUS'
            ];
            Nilai::insert($dat);
        } else {
            $dat = [
                'id_user' => Auth::user()->id,
                'benar' => $benar,
                'salah' => $salah,
                'kosong' => $kosong,
                'score' => $hasil,
                'keterangan' => 'TIDAK LULUS'
            ];
            Nilai::insert($dat);
        }
        return $hasil;
    }
}
