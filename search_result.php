<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="searchResult">
<title>search result</title>
    <style>
        body {
    margin:0;
    padding: 0;
   background: url("med.jpg") no-repeat center center fixed; 
  -webkit-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
 
  
}
     div.container {
    width:98%; 
    margin:1%;
  }
  table#table1 {
    text-align:center; 
    margin-top: auto;
    margin-left:auto; 
    margin-right:auto; 
   width:100%;
    padding-right: 20px;
    border: 10px;
    border-collapse: collapse;
    color: white;
  }
        th{
            font-size:20px;
            width: 600px;
            height:5px;
            padding:10px;
            margin: 10px;
            background-color: #3C636F;
            color: white;
        }
  tr,td {text-align:left;}
        tr{
    width: 50px;
    height: 40px;
    padding: 10px;
    color: white;
  }
  td{
    padding: 20px;
  }
        .space{
    width: 10px;
    height: 90px;
  }
    </style>
    <body>
        <div style="text-align: center; margin-top: auto; margin-left:auto; margin-right:auto;font-size: 30px;font-weight: bold; color:blue;">
            <div class="space">
          
        </div>
            <p>SEARCH RESULT</p>
        </div>
        <hr>
    <div class="container">
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
        <form method="get" action="getresult.php">
    <table id="table1" border="1" method="get">
     <tr>
    <th>Name</th>
    <th>Address</th>
    <th>Phone number</th>
    
  </tr>
  <tr>
    <td name="Name" ><?php echo $row["name"];?></td>
    <td name="Address"><?php echo $row["address"];?> </td>
    <td name="phone"><?php echo $row["phone_number"];?></td>
   
  </tr>
  
   
         </table>
             <?php
     }

    ?>
            </form>
           <?php
    }
    ?>
    
        

    
<?php 
    mysqli_free_result($result);
    ?>
  </div>
    </body>
    </head>
</html>