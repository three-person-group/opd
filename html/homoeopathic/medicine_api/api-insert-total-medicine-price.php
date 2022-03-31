<?php
   header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   $totalno=$data['stotalno'];
   $totalqty=$data['stotalqty'];
   $total=$data['stotal'];
   $opdno=$data['sopdno'];
   $date=$data['sdate'];

//    no_of_medicine
// qty_of_medicine
   $sql2="UPDATE homoeopathic_bill SET no_of_medicine='{$totalno}', qty_of_medicine='{$totalqty}', medicine_total='{$total}' WHERE
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

