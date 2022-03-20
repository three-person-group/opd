<?php
   // header("Contect-type:application/json");
   include "config.php" ;

   // $data=json_decode(file_get_contents("php://input"),true);

   // $name=$data['sname'];

   $sql='SELECT homoeopathic_bill.date,homoeopathic_bill.opdno,existing_patients.pname,homoeopathic_bill.medicine_total,homoeopathic_bill.test_total,homoeopathic_bill.total_charges
   FROM existing_patients   
   RIGHT JOIN homoeopathic_bill 
   ON existing_patients.opdno = homoeopathic_bill.opdno where date > now() - INTERVAL 28 day;';

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