<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <form method="POST" action="{{ route('soal') }}">
        @csrf
        @foreach ($soal as $item)
        <input type="hidden" name="id[]" value="{{$item->id}}">
        <input type="hidden" name="jumlah" value="{{$item->count()}}">
        <tr>
            <td width="17">
                <font color="#000000">{{$item->id}}</font>
            </td>
            <td width="430">
                <font color="#000000">{{$item->soal}}</font>
            </td>
        </tr>
        <br>
        <tr>
            <td height="21">
                <font color="#000000">&nbsp;</font>
            </td>
            <td>
                <font color="#000000">
                    A. <input name="pilihan[{{$item->id}}]" type="radio" value="a">
                   {{$item->jawaban_a}}</font>
            </td>
        </tr>
        <tr>
            <td>
                <font color="#000000">&nbsp;</font>
            </td>
            <td>
                <font color="#000000">
                    B. <input name="pilihan[{{$item->id}}]" type="radio" value="b">
                    {{$item->jawaban_b}}</font>
            </td>
        </tr>
        <tr>
            <td>
                <font color="#000000">&nbsp;</font>
            </td>
            <td>
                <font color="#000000">
                    C. <input name="pilihan[{{$item->id}}]" type="radio" value="c">
                    {{$item->jawaban_c}}</font>
            </td>
        </tr>
        <tr>
            <td>
                <font color="#000000">&nbsp;</font>
            </td>
            <td>
                <font color="#000000">
                    D. <input name="pilihan[{{$item->id}}]" type="radio" value="d">
                    {{$item->jawaban_d}}</font>
            </td><br>
        </tr>
        @endforeach


        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" name="submit" value="Jawab"
                    onclick="return confirm('Apakah Anda yakin dengan jawaban Anda?')"></td>
        </tr>
        </table>
    </form>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>
