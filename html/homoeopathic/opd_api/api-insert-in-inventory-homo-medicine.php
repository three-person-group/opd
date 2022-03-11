<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

$pname = $data['spname'];
$gender = $data['sgender'];
$age = $data['sage'];
$address = $data['saddress'];
$city = $data['scity'];
$mobileno = $data['scontact_no'];
$email = $data['semail'];
$reg_charge = $data['scharges'];  

//
$date = $data['sdate'];              
$opdno = $data['sopdno'];


$sql3 = "insert into inventory_homoeopathic (date,opdno)
    values('{$date}','{$opdno}');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data inserted", "status" => true));
} else {
    echo json_encode(array("message" => "data not inserted", "status" => false));

}
