<?php
include "config.php";

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

$data = json_decode(file_get_contents("php://input"), true);

$srno = $data['ssrno'];


$sql = "SELECT * FROM homoeopathic_regcharge WHERE SRNO = {$srno}";

$result = mysqli_query($conn, $sql) or die("SQL Query Failed.");

if(mysqli_num_rows($result) > 0 ){
	
	$output = mysqli_fetch_all($result, MYSQLI_ASSOC);
	echo json_encode($output);

}else{

 echo json_encode(array('message' => 'No Record Found.', 'status' => false));

}    


?>
