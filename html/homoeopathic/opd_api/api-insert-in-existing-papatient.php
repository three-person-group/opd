<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

// $srno=$data['ssrno'];
// $perticular=$data['sperticular'];
// $charges=$data['scharges'];

$date = $data['sdate'];              
$reg_charge = $data['scharges'];     

//
$opdno = $data['sopdno'];
$pname = $data['spname'];
$gender = $data['sgender'];
$age = $data['sage'];
$address = $data['saddress'];
$city = $data['scity'];
$mobileno = $data['scontact_no'];
$email = $data['semail'];

$sql3 = "insert into existing_patients (opdno,pname,gender,age,address,city,mobileno,email)
    values('{$opdno}','{$pname}','{$gender}','{$age}','{$address}','{$city}','{$mobileno}','{$email}');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data inserted", "status" => true));
} else {
    echo json_encode(array("message" => "data not inserted", "status" => false));

}
