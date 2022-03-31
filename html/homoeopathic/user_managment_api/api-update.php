<?php
   include 'config.php';

$data = json_decode(file_get_contents("php://input"), true);

$sid=$data['sid'];
$sname=$data['sname'];
$semail=$data['semail'];
$smobileno=$data['smobileno'];
$susername=$data['susername'];
$spassword=$data['spassword'];
$srole=$data['srole'];



$sql1 = "UPDATE member_register SET name = '{$sname}', email = '{$semail}', mobileno = '{$smobileno}', username = '{$susername}', password = '{$spassword}', role = '{$srole}' WHERE id = {$sid}";


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
