<?php
   // header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   $opdno=$data['sopdno'];

   $sql="SELECT * FROM `existing_patients` WHERE opdno='{$opdno}';";

   $result=$conn->query($sql);

   if($result->num_rows >0)
   {
      $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
      // echo json_encode($output);
      echo json_encode(array("message"=>"Data Found","status"=>'true'));
   }
   else
   {
      echo json_encode(array("message"=>"Data Not Found","status"=>'false'));
   }




?>