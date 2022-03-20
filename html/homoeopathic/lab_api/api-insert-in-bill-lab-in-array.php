<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

$testarr = $data['stestarr'];
$opdno=$data['sopdno'];
$date=$data['sdate'];


$sql3 = "UPDATE homoeopathic_bill SET test_name='{$testarr}' WHERE opdno='{$opdno}' AND date='{$date}';";



// $sql3 = "insert into homoeopathic_bill (test_name)
//     values('{$testarr}');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data inserted in test name column in bill", "status" => true));
} else {
    echo json_encode(array("message" => "data not inserted", "status" => false));

}
