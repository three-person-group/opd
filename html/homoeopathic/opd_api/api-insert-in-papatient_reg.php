<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

$gender = $data['sgender'];
$age = $data['sage'];
$address = $data['saddress'];
$city = $data['scity'];
$mobileno = $data['scontact_no'];
$email = $data['semail'];

// //
$date = $data['sdate'];              
$opdno = $data['sopdno'];
$pname = $data['spname'];

$sql="SELECT max(patientno) AS pno FROM patient_register;";
$result=$conn->query($sql);

   if($result->num_rows >0)
   {
 
    $row = mysqli_fetch_assoc($result);

     $pno=$row['pno']+1;
     echo $pno;
   }
   else
   {
      echo json_encode(array("message"=>"Data Not Found","status"=>false));
   }
     

$sql3 = "insert into patient_register (patientno,date,opdno,pname,`in_progress(pending/done)`)
    values($pno,'{$date}','{$opdno}','{$pname}','pending');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data inserted in Patient register", "status" => true));
} else {
    echo json_encode(array("message" => "data not inserted in Patient register", "status" => false));

}
