<?php
include 'config.php';
header("Content-Type:application/json");
header("Access-Control-Allow-Method:delete");

$data=json_decode(file_get_contents("php://input"),true);

$ssrno=$data['ssrno'];

$sql11=" DELETE from member_register WHERE id='{$ssrno}';";


// echo $conn->query($sql11);
if($conn->query($sql11))
{
   echo json_encode(array("message"=>"data deleted","status"=>'true'));
}
else{
   
   echo json_encode(array("message"=>"data not deleted","status"=>'false'));
}

?>