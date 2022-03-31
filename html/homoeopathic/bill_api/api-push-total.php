<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

$NoTotal = $data['sNoTotal'];
$QtyTotal = $data['sQtyTotal'];
$total = $data['stotal'];
$opdno=$data['sopdno'];
$date=$data['sdate'];

// total_no
// total_qty

$sql3 = "UPDATE homoeopathic_bill SET total_no='{$NoTotal}',total_qty='{$QtyTotal}',total_charges='{$total}' WHERE opdno='{$opdno}' AND date='{$date}';";

// insert into homoeopathic_bill (medicine_charges)
//     values('{$total}');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data inserted", "status" => true));
} else {
    echo json_encode(array("message" => "data not inserted", "status" => false));

}
?>