<?php
   // header("Contect-type:application/json");
   include "config.php" ;

   // $data=json_decode(file_get_contents("php://input"),true);

   // $name=$data['sname'];

   // SELECT * FROM `patient_register` ORDER BY `patient_register`.`date` ASC
   $sql="SELECT * FROM `patient_register` WHERE date > now() - INTERVAL 288 day ORDER BY `patient_register`.`patientno` DESC;";

   $result=$conn->query($sql);

   if($result->num_rows >0)
   {
      $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
      echo json_encode($output);
   }
   else
   {
      echo json_encode(array("message"=>"Data Not Found","status"=>false));
   }




?>