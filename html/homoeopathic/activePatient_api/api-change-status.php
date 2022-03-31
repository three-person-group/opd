<?php
   // header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   $opdno1=$data['sopdno'];
   $date1=$data['sdate'];

   $sql2="UPDATE `patient_register` SET `in_progress(pending/done)`='done' WHERE opdno='{$opdno1}' AND date='{$date1}';";

//    UPDATE patient_register SET `in_progress(pending/done)`='done' WHERE opdno=115 AND date='2022-03-08';

//    if($conn->query($sql2))
//    {
      
//    }

//    if ($conn->query($sql2)) {
//       echo json_encode(array("message" => "data inserted", "status" => true));
//   } else {
//       echo json_encode(array("message" => "data not inserted", "status" => false));
  
//   }
  $result=$conn->query($sql2);
   if($result)
   {
      echo json_encode(array("message"=>"data updated","status"=>"true"));
   }
   else
   {
      echo json_encode(array("message"=>"data updated","status"=>"false"));
   }




?>