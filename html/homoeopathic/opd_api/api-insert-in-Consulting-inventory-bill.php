<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

$Consulting=$data['sconsulting'];
$opdno=$data['sopdno'];
$date=$data['sdate'];



$sql3 = "UPDATE homoeopathic_bill SET reg_charge='{$Consulting}' WHERE opdno='{$opdno}' AND date='{$date}';";

// insert into homoeopathic_bill (medicine_charges)
//     values('{$pricearr}');";

if ($conn->query($sql3)) {
    echo json_encode(array("message" => "data Updated in homoeopathic_bill", "status" => true));
} else {
    echo json_encode(array("message" => "data Not  Updated in homoeopathic_bill", "status" => false));

}
?>

