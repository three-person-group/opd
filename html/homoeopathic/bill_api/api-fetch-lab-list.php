<?php
   header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   $opdno=$data['sopdno'];
   $date=$data['sdate'];

   $sql2="SELECT test_name,test_qty,
   test_charges FROM homoeopathic_bill where opdno='{$opdno}' and date='{$date}'";
   if($conn->query($sql2))
   {
      
   }

   $result=$conn->query($sql2);

   if($result->num_rows >0)
   {
      $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
      echo json_encode($output);
   }
   else
   {
      echo json_encode(array("key"=>"no such data","status"=>"false"));
   }




?>

