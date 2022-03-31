<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

$pricearr = $data['spricearr'];
$opdno=$data['sopdno'];
$date=$data['sdate'];


$sql3 = "UPDATE homoeopathic_bill SET test_charges='{$pricearr}' WHERE opdno='{$opdno}' AND date='{$date}';";

// insert into homoeopathic_bill (medicine_charges)
//     values('{$pricearr}');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data inserted in lab price column in bill", "status" => true));
} else {
    echo json_encode(array("message" => "data not inserted", "status" => false));

}

?>