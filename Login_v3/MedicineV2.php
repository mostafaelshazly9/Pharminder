<!DOCTYPE html>
<html lang="ar"> 
<head>
<meta charset="iso-8859-6">
<style>
    .controlBtn{
        background-color: aqua;
        font:white;
        padding:15px;
        margin: 5px;
    } 
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 15px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<h2 style="text-align: center;">Medicine Control Panel</h2>
<br>
    <hr>
    <br>
<table>
  <tr>
    <th>Medicine ID</th>
    <th>Name</th>
    <th>Arabic name</th>
    <th>Action</th>
  </tr>
  <form method="post">
              <?php
          $conn=mysqli_connect("localhost","root","","pharminder");
if ($conn -> connect_error){
die ("Connection field:".$conn->connect_error);
}
$sql= "Select * from medicine";
$result = $conn->query($sql);
if ($result -> num_rows>0){
while ($row=$result -> fetch_assoc()){
    
?>
    <tr>
    <td><input type="number" name="medicineid" value="<?php echo $row['medicineid']; ?>"></td>
    <td><input type="text" name="medName" value="<?php echo $row['name']; ?>"></td>
    <td><input type="text" name="medArabName" value="<?php echo $row['arabic_name']; ?>"></td>
    <td><button class="controlBtn" formaction="del_medi.php" >Delete</button></td>
  </tr>
      </form>
         <?php
     }

    ?>
    
   
    <?php
    }
    ?>
  
   
  
</table>
<?php 
    mysqli_free_result($result);
    ?>
</body>
</html>