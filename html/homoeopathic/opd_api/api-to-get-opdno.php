<?php
   header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   
   $sql2="SELECT  opdno FROM `existing_patients` ORDER BY `existing_patients`.`opdno` DESC LIMIT 1;";
   


   //for 0 row 
   //    $sql2="SELECT  *FROM `inventory_medicine_ayurvedic` ORDER BY `OPD/ID` DESC LIMIT 1;";


//    SELECT max(opdno) FROM `existing_patients`;";

//    SELECT CHARGES FROM homoeopathic where SRNO=1";
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

