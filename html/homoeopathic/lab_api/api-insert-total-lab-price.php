<?php
   header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   $totalno=$data['stotalno'];
   $totalqty=$data['stotalqty'];
   $total=$data['stotal'];
   $opdno=$data['sopdno'];
   $date=$data['sdate'];

//    no_of_test
// qty_of_test
   $sql2="UPDATE homoeopathic_bill SET no_of_test='{$totalno}', qty_of_test='{$totalqty}', test_total='{$total}' WHERE
   opdno='{$opdno}' AND date='{$date}'";
   if($conn->query($sql2))
   {
      
   }

   if ($conn->query($sql2)) {
      echo json_encode(array("message" => "data inserted in lab total column in bill", "status" => true));
  } else {
      echo json_encode(array("message" => "data not inserted", "status" => false));
  
  }




?>

