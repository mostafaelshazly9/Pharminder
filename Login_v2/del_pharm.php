<?php


    $id = $_POST ["ud_id"];
//    $Name = $_POST ["ud_name"];
//    $Address = $_POST ["ud_address"];
//    $LocLong = $_POST ["ud_latitude"];
//    $LocAtt = $_POST ["ud_longitude"];
//    $Phone = $_POST ["ud_phone"];
//    $Notes = $_POST ["ud_note"];

$conn=mysqli_connect("localhost","root","","pharminder");

$sql= "call deletePharmacyWithID('$id')"; 
    $result = mysqli_query($conn,$sql);

 if ($result)
    {
         header('location: pharmaciesV3.php');
    }
 
?>