<!DOCTYPE html>
<html>
<head>
    <title>pharmacy control panel</title>
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
        padding:5px;
        margin: 5px;
        width: 70px;
        font-weight: bold;
    } 
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
 
}

td, th {
border: 1px solid;
  text-align:center;
  padding:6px;
  margin:6px;
    border-color: white;
}
th {
    background-color:#3C636F;
      font-style: italic;
  color:white;
  width: 30%;

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
      

    </script>
</head>
<body>
<h2 style="text-align: left; color:#3C636F ; font-size: xx-large;font-weight: bold">Pharmacies Control Panel</h2>
<br>
    <hr>
    <br>
<table>
    <tr>
    <th>pharmacy ID</th>
    <th>Name</th>
    <th>Address</th>
    <th>Location longitude</th>
    <th>Location latitude</th>
    <th>Phone Number</th>
    <th>Notes</th>
    <th>Action</th>
  </tr>
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
         
  </td>
  </tr>
      </form>
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
 
  
    <form name="pharm_form2" method="post">      
  <tr>
   <td><input type="text" name="ud_id" value='<?php echo $row["id"];?>'></td>
    <td><input type="text" name="ud_name" value="<?php echo $row['ud_name']; ?>"></td>
    <td><input type="text" name="ud_address" value="<?php echo $row['ud_address']; ?>"></td>
    <td><input type="text" name="ud_latitude" value="<?php echo $row['ud_latitude']; ?>"></td>
    <td><input type="text" name="ud_longitude" value="<?php echo $row['ud_longitude']; ?>"></td>
    <td><input type="text" name="ud_phone" value="<?php echo $row['phone_number']; ?>"></td>
    <td><input type="text" name="ud_note" value="<?php echo $row['notes'] ; ?>"></td>
      <td>
   <button class="controlBtn" formaction="edit_pharm.php">Edit</button>
        <button class="controlBtn" formaction="del_pharm.php">Delete</button></td>
  </tr>
        </form>
       
    
        <?php
     }

    ?>
    </table> 
    <?php
    }
    ?>
    
        

    
<?php 
    mysqli_free_result($result);
    ?>
</body>
</html>
