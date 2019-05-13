<?php

    
  
    $username = $_POST ["ud_username"];
    $password = $_POST ["ud_password"];
    $email = $_POST ["ud_email"];
    $mobil_number = $_POST ["ud_mobil_number"];
    $Notes = $_POST ["ud_notes"];
    $pharm_id = $_POST ["ud_pharmacyID"];
echo $username;
$conn=mysqli_connect("localhost","root","","pharminder");

$sql= "call newPharmacyOwner ('$username','$password','$email','$mobil_number','$Notes','$pharm_id')"; 
    $result = mysqli_query($conn,$sql);

 if ($result)
    {
         header('location: pharmacyOwnersV2.php');
    }
  
?>