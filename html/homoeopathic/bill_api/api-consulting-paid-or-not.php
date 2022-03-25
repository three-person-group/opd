<?php
   header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   $opdno=$data['sopdno'];
   $date=$data['sdate'];

   $sql2="SELECT REG_CHARGE FROM inventory_homoeopathic_regcharge where opdno='{$opdno}' and date='{$date}'";
   if($conn->query($sql2))
   {
      
   }

   $result=$conn->query($sql2);

   if($result->num_rows >0)
   {
      $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
      echo json_encode($output);
      // echo json_encode(array("key"=>"no such data","status"=>"true"));
   }
   else
   {
      echo json_encode(array("key"=>"no such data","status"=>"false"));
   }




?>

