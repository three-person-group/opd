<?php
   include 'config.php';

$data = json_decode(file_get_contents("php://input"), true);

$ssrno=$data['ssrno'];
$sperticular=$data['sperticular'];
$scharges=$data['scharges'];


$sql1 = "UPDATE homoeopathic_othercharge SET PERTICULAR = '{$sperticular}', CHARGES = {$scharges} WHERE SRNO = {$ssrno}";


$result=$conn->query($sql1);
if($result)
{
   echo json_encode(array("value"=>"data updated","status"=>"true"));
}
else
{
   echo json_encode(array("value"=>"data NOT updated","status"=>"false"));
}


?>
