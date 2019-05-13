<?php


    $id = $_POST ["ud_id"];

$conn=mysqli_connect("localhost","root","","pharminder");

$sql= "call deletePharmacyWithID('$id')"; 
    $result = mysqli_query($conn,$sql);

 if ($result)
    {
         header('location: pharmaciesV3.php');
    }
 
?>