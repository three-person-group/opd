<?php
   // header("Contect-type:application/json");
   include "config.php" ;

   $data=json_decode(file_get_contents("php://input"),true);

   $opdno1=$data['sopdno'];
   $date1=$data['sdate'];

   $sql1="DELETE FROM `inventory_homoeopathic_regcharge` WHERE opdno='$opdno1'AND date='$date1';";
   $sql2="DELETE FROM `inventory_homoeopathic_dispcharge` WHERE opdno='$opdno1'AND date='$date1';";
   $sql3="DELETE FROM `inventory_homoeopathic_lab` WHERE opdno='$opdno1'AND date='$date1';";
   $sql4="DELETE FROM `inventory_homoeopathic_othercharge` WHERE opdno='$opdno1'AND date='$date1';";
   $sql5="DELETE FROM `homoeopathic_bill` WHERE opdno='$opdno1'AND date='$date1';";
   $sql6="DELETE FROM `patient_register` WHERE opdno='$opdno1'AND date='$date1';";

   $sql7="DELETE FROM `existing_patients` WHERE opdno='$opdno1';";


  $result1=$conn->query($sql1);
  $result2=$conn->query($sql2);
  $result3=$conn->query($sql3);
  $result4=$conn->query($sql4);
  $result5=$conn->query($sql5);
  $result6=$conn->query($sql6);
  $result7=$conn->query($sql7);

   if($result1)
   {
      echo json_encode(array("message"=>"data Deleted","status"=>"true"));
   }
   else
   {
      echo json_encode(array("message"=>"data not Deleted","status"=>"false"));
   }

   if($result2)
   {
      echo json_encode(array("message"=>"data Deleted","status"=>"true"));
   }
   else
   {
      echo json_encode(array("message"=>"data notDeleted","status"=>"false"));
   }

   if($result3)
   {
      echo json_encode(array("message"=>"data Deleted","status"=>"true"));
   }
   else
   {
      echo json_encode(array("message"=>"data notDeleted","status"=>"false"));
   }

   if($result4)
   {
      echo json_encode(array("message"=>"data Deleted","status"=>"true"));
   }
   else
   {
      echo json_encode(array("message"=>"data notDeleted","status"=>"false"));
   }

   if($result5)
   {
      echo json_encode(array("message"=>"data Deleted","status"=>"true"));
   }
   else
   {
      echo json_encode(array("message"=>"data notDeleted","status"=>"false"));
   }

   if($result6)
   {
      echo json_encode(array("message"=>"data Deleted","status"=>"true"));
   }
   else
   {
      echo json_encode(array("message"=>"data notDeleted","status"=>"false"));
   }

   if($result7)
   {
      echo json_encode(array("message"=>"data Deleted","status"=>"true"));
   }
   else
   {
      echo json_encode(array("message"=>"data notDeleted","status"=>"false"));
   }




?>