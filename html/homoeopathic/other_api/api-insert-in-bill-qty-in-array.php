<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

$qty = $data['sqtyarr'];
$opdno=$data['sopdno'];
$date=$data['sdate'];


$sql3 = "UPDATE homoeopathic_bill SET other_qty='{$qty}' WHERE opdno='{$opdno}' AND date='{$date}';";





// $sql3 = "insert into homoeopathic_bill (medicine_qty)
//     values('{$qty}');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data inserted", "status" => true));
} else {
    echo json_encode(array("message" => "data not inserted", "status" => false));

}
