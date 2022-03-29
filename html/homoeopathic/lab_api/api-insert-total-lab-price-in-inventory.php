<?php
   header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   $totalqty=$data['stotalqty'];
   $opdno=$data['sopdno'];
   $date=$data['sdate'];

   $sql2="UPDATE inventory_homoeopathic_lab SET total='{$totalqty}' WHERE
   opdno='{$opdno}' AND date='{$date}'";
   if($conn->query($sql2))
   {
      
   }

   if ($conn->query($sql2)) {
      echo json_encode(array("message" => "data inserted", "status" => true));
  } else {
      echo json_encode(array("message" => "data not inserted", "status" => false));
  
  }




?>

