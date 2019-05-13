<!DOCTYPE html>
<html lang="ar"> 
<head>
<meta charset="iso-8859-6">
<style>
  body{
 background: url("4.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  
  }
    .controlBtn{
 background-color:#3C636F ;
        color:white;
        padding:10px;
        margin: 10px;
        font-weight: bold;
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
  border-color: white;
}
th{
      background-color:#3C636F;
      font-style: italic;
      color:white;
      width: 30%;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<h2 style="text-align: left; color:#3C636F; font-size: xx-large;font-weight: bold">Medicine Control Panel</h2>
<br>
    <hr>
    <br>
<table>
  <tr>
    <th>Medicine ID</th>
    <th>Name</th>

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