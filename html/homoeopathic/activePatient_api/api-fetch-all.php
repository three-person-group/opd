<?php
   // header("Contect-type:application/json");
   include "config.php" ;

   // $data=json_decode(file_get_contents("php://input"),true);

   // $name=$data['sname'];

   $sql="SELECT * FROM `patient_register` WHERE `in_progress(pending/done)`='pending';";

   $result=$conn->query($sql);

   if($result->num_rows >0)
   {
      $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
      echo json_encode($output);
   }
   else
   {
      echo json_encode(array("message"=>"data not found","status"=>false));
   }




?>