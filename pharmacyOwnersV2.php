<!DOCTYPE html>
<html>
<head>
    <title>pharmacy owners control panel</title>
<style>
  body{
 background: url("4.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  }
    .controlBtn{
        background-color: #3C636F;
        color:white;
        padding:5px;
        margin: 5px;
        width: 70px;
        font-weight: bold;
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<h2 style="text-align: left; color:#3C636F ; font-size: xx-large;font-weight: bold">Pharmacy owners Control Panel</h2>
<br>
    <hr>
    <br>
<table>
  <tr>
       <th>ID</th>
    <th>Name</th>
    <th>Password</th>
    <th>Email</th>
    <th>Mobile number</th>
    <th>Notes</th>  
     <th>PharmacyID</th>
    <th>Action</th>
  </tr>
    <form action="page.php">
  <tr>
 <td></td>
<td><input type="text" name="ud_username"></td>
      <td><input type="text" name="ud_password"></td>
    <td><input type="email" name="ud_email"></td>
    <td><input type="text" name="ud_mobil_number"></td>
    <td><input type="text" name="ud_notes"></td>
    <td><input type="text" name="ud_pharmacyID"></td>
    <td><button class="controlBtn" formaction="add_PH_Owner.php" >Add</button> </td>
        </tr></form>
    
        <?php
          $conn=mysqli_connect("localhost","root","","pharminder");
if ($conn -> connect_error){
die ("Connection field:".$conn->connect_error);
}
$sql= "Select * from pharmacy_owner";
$result = $conn->query($sql);
if ($result -> num_rows>0){
while ($row=$result -> fetch_assoc()){
    
?> 
    <form>
  <tr>
<td><input type="number" name="Pharmacy_OwnerID" value="<?php echo $row['pharmacy_ownerID']; ?>"> </td>
   <td><input type="text" name="ud_username"value="<?php echo $row['username']; ?>"></td>
    <td><input type="text" name="ud_password"value="<?php echo $row['password']; ?>"></td>
    <td><input type="email" name="ud_email"value="<?php echo $row['email']; ?>"></td>
    <td><input type="text" name="ud_mobil_number"value="<?php echo $row['mobil_number']; ?>"></td>
    <td><input type="text" name="ud_notes"value="<?php echo $row['notes']; ?>" ></td>
    <td><input type="text" name="ud_pharmacyID" value="<?php echo $row['pharmacyID']; ?>"></td>
    <td><button class="controlBtn">Edit</button> <button class="controlBtn">Delete</button></td>
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