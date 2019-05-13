
    <?php

    $email = $_POST ["email"];
   $pass = $_POST ["pass"];
    
    $conn=mysqli_connect("localhost","root","","pharminder");
 


    $sql = "call verifyAdmin ('$email','$pass',@id);" or die("Last error:{$conn->error}\n"); 


      $result = mysqli_query($conn,$sql)  or die("Last error:{$conn->error}\n");
        


      

  $fin= (mysqli_fetch_array($result));
         


    if ($fin["id"])
    {
         header('location: admin_form.html');
    }
     
  
     
   
  
?>
    
