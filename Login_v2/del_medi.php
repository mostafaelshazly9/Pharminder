<?php

    $medID= $_POST ["medID"];
    $medName = $_POST ["medName"];
    $medArabName = $_POST["medArabName"];

$conn=mysqli_connect("localhost","root","","pharminder");

$sql= "call  ('$medID','$medName','$medArabName')"; 
    $result = mysqli_query($conn,$sql);


   
?>