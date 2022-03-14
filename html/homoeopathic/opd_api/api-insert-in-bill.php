<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

// $gender = $data['sgender'];
// $age = $data['sage'];
// $address = $data['saddress'];
// $city = $data['scity'];
// $mobileno = $data['scontact_no'];
// $email = $data['semail'];

//
$date = $data['sdate'];              
$opdno = $data['sopdno'];
$pname = $data['spname'];
$reg_charge = $data['scharges'];  


$sql3 = "INSERT INTO homoeopathic_bill (`date`,opdno,pname,reg_charge)VALUES('{$date}','{$opdno}','{$pname}','{$reg_charge}')";
// insert into homoeopathic_bill (date,opdno,pname,reg_charge)
//     values('{$date}','{$opdno}','{$pname}','{$reg_charge}');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data inserted in bill", "status" => true));
} else {
    echo json_encode(array("message" => "data not inserted in bill", "status" => false));

}
