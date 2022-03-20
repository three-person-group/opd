<?php

include 'config.php';
// header("Content-Type:application/json");
// header("Access-Control-Allow-Method:delete");

// $data=json_decode(file_get_contents("php://input"),true);

// $medicine_name=$data['smedicine_name'];

$opdno = isset($_GET['sopdno']) ? $_GET['sopdno'] : die();

$sql11="SELECT opdno FROM existing_patients WHERE opdno='{$opdno}';";


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