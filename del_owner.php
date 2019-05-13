<?php


    $id = $_POST ["Pharmacy_OwnerID"];

$conn=mysqli_connect("localhost","root","","pharminder");

$sql= "call deleteOwnerByID('$id')"; 
    $result = mysqli_query($conn,$sql);

 if ($result)
    {
         header('location: pharmacyOwnersV2.php');
    }
 
?>