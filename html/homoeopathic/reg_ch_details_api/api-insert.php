<?php
   include 'config.php';

   header("Content-Type:Application/json");
   header("access-control-allow-method:post");

   $data=json_decode(file_get_contents("php://input"),true);

   $ssrno=$data['ssrno'];
   $sperticular=$data['sperticular'];
   $scharges=$data['scharges'];

   $sql3="insert into homoeopathic_regcharge (SRNO,PERTICULAR,CHARGES) values('{$ssrno}','{$sperticular}','{$scharges}') ";

   if($conn->query($sql3))
   {
      echo json_encode(array("message"=>"data inserted","status"=>true));
   }
   else
   {
      echo json_encode(array("message"=>"data not inserted","status"=>false));
      
   }



?>