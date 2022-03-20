<?php
   // header("Contect-type:application/json");
   include "config.php" ;

   // $data=json_decode(file_get_contents("php://input"),true);

   // $name=$data['sname'];

   $sql='SELECT COUNT(homoeopathic_bill.opdno) AS no,sum(homoeopathic_bill.medicine_total) AS total_medicine,sum(homoeopathic_bill.test_total) AS total_lab,sum(homoeopathic_bill.total_charges) AS total  
   FROM existing_patients   
   RIGHT JOIN homoeopathic_bill 
   ON existing_patients.opdno = homoeopathic_bill.opdno where date > now() - INTERVAL 7 day;';

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