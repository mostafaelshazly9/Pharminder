<?php 

//$conn=mysqli_connect("localhost","root","","pharminder");
// $medname= $_POST ["name"];

class someFunction
{
   // public function redirect(){
      $query = "SELECT name from medicine where name like CONCAT('%','$medname','%') or arabic_name like CONCAT('%','$medname','%')";
     $result = $this->db->dataQuery($query);
     return $result->fetchAll();
}
}
someFunction::redirect();

// var query = conn.query("call getSimilarMedicines ('$medname')"),
//function getmed (err , result)
// {
//     if (err)
//     {
//      res.send(err);   
//           }
//    res.json(result);
//})
//     }
// }



?>
