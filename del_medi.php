<?php

    $med= $_POST ["medicineid"];
   

$conn=mysqli_connect("localhost","root","","pharminder");

$sql= "call deleteMedicneByID ('$med')"; 
    $result = mysqli_query($conn,$sql);


    if ($result)
    {
         header('location: MedicineV2.php');
    }
?>