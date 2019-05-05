<!DOCTYPE html>
<html>
<head>
    <title>pharmacy control panel</title>
<style>
    .controlBtn{
        background-color: aqua;
        font:white;
        padding:5px;
        margin: 5px;
        width: 70px;
    } 
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
 
}

td, th {
  border: 1px solid #dddddd;
  text-align:center;
  padding:4px;
  margin: auto;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
    <script>
        function add(){
            document.forms['pharm_form'].action='add_pharm.php';
            document.forms['pharm_form'].submit();
        }
        function del()
        {
            document.forms['pharm_form'].action='del_pharm.php';
            document.forms['pharm_form'].submit();
        }
        function edit()
        {
            document.forms['pharm_form'].action='edit_pharm.php';
            document.forms['pharm_form'].submit();
        }

    </script>
</head>
<body>
<h2 style="text-align: center; color: aqua">Pharmacies Control Panel</h2>
<br>
    <hr>
    <br>
<table>
    <tr>
    <th>pharmacy ID</th>
    <th>Name</th>
    <th>Address</th>
    <th>Locatoin longitude</th>
    <th>Location attitude</th>
    <th>Phone Number</th>
    <th>Notes</th>
    <th>Action</th>
  </tr>
     <?php
          $conn=mysqli_connect("localhost","root","","pharminder");
if ($conn -> connect_error){
die ("Connection field:".$conn->connect_error);
}
$sql= "Select * from pharmacy";
$result = $conn->query($sql);
if ($result -> num_rows>0){
while ($row=$result -> fetch_assoc()){
    
?>
  
    <form name="pharm_form" method="post">      
  <tr>
   <td><input type="hidden" name="ud_id"><?php echo $row["id"];?></td>
    <td><input type="hidden" name="ud_name"><?php echo $row["name"]; ?></td>
    <td><input type="hidden" name="ud_address"><?php echo $row["address"]; ?></td>
    <td><input type="hidden" name="ud_latitude"><?php echo $row["latitude"]; ?></td>
    <td><input type="hidden" name="ud_longitude"><?php echo $row["longitude"]; ?></td>
    <td><input type="hidden" name="ud_phone"><?php echo $row["phone_number"]; ?></td>
    <td><input type="hidden" name="ud_note"><?php echo $row["notes"] ; ?></td>
      
     <td><button class="controlBtn" onclick="add();">Add</button>
   <button class="controlBtn" onclick="edit();">Edit</button>
        <button class="controlBtn">Delete</button></td>
  </tr>
        <?php
     }}
    ?>
      </form>
    
        <form name="pharm_form" method="post">      
  <tr>
   <td><input type="number" name="ud_id">  </td>
    <td><input type="text" name="ud_name"></td>
    <td><input type="text" name="ud_address"></td>
    <td><input type="text" name="ud_latitude"></td>
    <td><input type="text" name="ud_longitude"></td>
    <td><input type="number" name="ud_phone"></td>
    <td><input type="text" name="ud_note"></td>
     <td><button class="controlBtn" onclick="add();">Add</button>
   <button class="controlBtn">Edit</button>
        <button class="controlBtn">Delete</button></td>
  </tr>
      </form>      
</table>
    
<?php 
    mysqli_free_result($result);
    ?>
</body>
</html>
