<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>sispak</title>
</head>

<body>

    <form action="" method="get">
        <select name="ipk" id="">
            <option value="1">rendah</option>
            <option value="3">menengah</option>
            <option value="4">tinggi</option>
        </select>
        <select name="toefl" id="">
            <option value="1">rendah</option>
            <option value="3">menengah</option>
            <option value="4">tinggi</option>

        </select>
        <select name="pendapatan" id="">
            <option value="1">rendah</option>
            <option value="3">menengah</option>
            <option value="4">tinggi</option>

        </select>

        <input type="submit" name="cari" value="cari">
    </form>

    <table border="1">
        <tr>
            <td>
                Nim
            </td>
            <td>
                Nama
            </td>
        </tr>

        <?php

include 'koneksi.php';

if(isset($_GET['cari'])){
    $ipk = $_GET['ipk'];
    $toefl = $_GET['toefl'];
    $pendapatan = $_GET['pendapatan'];

    $sql = "call search($ipk,$toefl,$pendapatan)";
    $cek = mysqli_query($con, $sql);

    if($cek){

        
   
        while($row = mysqli_fetch_array($cek)){      ?>

        <tr>
            <td>
                <?php echo $row['nim']; ?>
            </td>
            <td>
                <?php echo $row['nama']; ?>
            </td>
        </tr>
        <?php  }
      
    }
    

}



?>

    </table>

</body>

</html>