<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

$total = $data['stotal'];
$opdno=$data['sopdno'];
$date=$data['sdate'];


$sql3 = "UPDATE homoeopathic_bill SET total_charges='{$total}' WHERE opdno='{$opdno}' AND date='{$date}';";

// insert into homoeopathic_bill (medicine_charges)
//     values('{$total}');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data inserted", "status" => true));
} else {
    echo json_encode(array("message" => "data not inserted", "status" => false));

}
?>