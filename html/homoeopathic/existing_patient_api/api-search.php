<?php

include 'config.php';
// header("Content-Type:application/json");
// header("Access-Control-Allow-Method:delete");

// $data=json_decode(file_get_contents("php://input"),true);

// $medicine_name=$data['smedicine_name'];

$medicine_name = isset($_GET['smedicine_name']) ? $_GET['smedicine_name'] : die();

$sql11="SELECT opdno,pname FROM existing_patients WHERE opdno LIKE '%{$medicine_name}%' OR  pname LIKE '%{$medicine_name}%'  LIMIT 5;";


$result=$conn->query($sql11);

if($result->num_rows >0)
{
   $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
   echo json_encode($output);

}
else{
   
   echo json_encode(array("message"=>"data not searched","status"=>false));
}

?>