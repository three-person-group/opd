<?php
   header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   $opdno=$data['sopdno'];
   $date=$data['sdate'];

   // no_of_medicine
// qty_of_medicine
// no_of_other
// qty_of_other

// no_of_test
// qty_of_test
   $sql2="SELECT reg_charge,no_of_medicine,qty_of_medicine,medicine_total,no_of_test,qty_of_test,test_total,no_of_other,qty_of_other,other_total FROM homoeopathic_bill where opdno='{$opdno}' AND date='{$date}'";

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

