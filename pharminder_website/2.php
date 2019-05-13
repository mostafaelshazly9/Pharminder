<?php
    header('Content-Type: application/json');
    function getMedicine() {
        $medname= $_POST ["name"];
        $conn=mysqli_connect("localhost","root","","pharminder");
        $sql = "SELECT name from medicine where name like CONCAT('%','$medname','%') or arabic_name like CONCAT('%','$medname','%')";
        $result = $conn->query($sql);
        // output data of each row
        $a=array();
        while($row = $result->fetch_assoc()) {
            //    var_dump(mysqli_fetch_array($result));
            array_push($a,$row["name"]);
        }
        return json_encode($a);
    }
    $output = getMedicine();
    echo $output
    //    print_r($a);
    //    echo json_encode($a)
    ?>
