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

//
$date = $data['sdate'];              
$opdno = $data['sopdno'];
$pname = $data['spname'];
     

$sql3 = "insert into patient_register (date,opdno,pname,`in_progress(pending/done)`)
    values('{$date}','{$opdno}','{$pname}','pending');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data inserted", "status" => true));
} else {
    echo json_encode(array("message" => "data not inserted", "status" => false));

}
