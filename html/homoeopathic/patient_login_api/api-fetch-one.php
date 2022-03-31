<?php
   header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   $opdno=$data['sopdno'];
   $phno=$data['sphno'];

   $sql2="SELECT * FROM existing_patients where opdno='{$opdno}' AND mobileno='{$phno}'";
   if($conn->query($sql2))
   {
      
   }

   $result=$conn->query($sql2);

   if($result->num_rows >0)
   {
      $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
      echo json_encode(array("key"=>"data Found",'status'=>'true'));
      // echo json_encode($output);
   }
   else
   {
      echo json_encode(array("key"=>"no such data",'status'=>'false'));
   }




?>

