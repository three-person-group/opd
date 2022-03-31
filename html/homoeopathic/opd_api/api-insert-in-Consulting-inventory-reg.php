<?php

include 'config.php';
header("Content-Type:application/json");
header("Access-Control-Allow-Method:post");

$data=json_decode(file_get_contents("php://input"),true);

$Consulting=$data['sconsulting'];
$opdno=$data['sopdno'];
$date=$data['sdate'];

$sql1="select * from inventory_homoeopathic_regcharge WHERE opdno='{$opdno}' AND date='{$date}';";

if($conn->query($sql1))
   {}

   $result=$conn->query($sql1);

   if($result->num_rows >0)
   {
      $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
      // echo json_encode($output);
      echo json_encode(array("message"=>"Already patient reg for today in Consulting","status"=>true));

   }
   else
   {

      
      $sql2="insert into inventory_homoeopathic_regcharge (date,opdno,REG_CHARGE) values('{$date}','{$opdno}','{$Consulting}');";


      if($conn->query($sql2))
      {
         echo json_encode(array("message"=>"data inserted in Consulting","status"=>true));
      }
      else{
         
         echo json_encode(array("message"=>"data not inserted Consulting","status"=>false));
      }



   }



?>