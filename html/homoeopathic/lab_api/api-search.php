<?php

include 'config.php';
// header("Content-Type:application/json");
// header("Access-Control-Allow-Method:delete");

// $data=json_decode(file_get_contents("php://input"),true);

// $lab_name=$data['slab_name'];

// $lab_name=$post['TESTNAME'];

$lab_name = isset($_GET['slab_name']) ? $_GET['slab_name'] : die();

$sql11="SELECT TESTNAME FROM homoeopathic_lab WHERE TESTNAME LIKE '%{$lab_name}%' LIMIT 3;";


$result=$conn->query($sql11);

if($result->num_rows >0)
{
   $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
   echo json_encode($output);

}
else{
   
   echo json_encode(array("message"=>"data not searched","status"=>false));
}
// $output.="<li>{$row['TESTNAME']}<li>";
   // $output.="<li>city not found<li>";
   

// $output.="<ul>";

// echo $output;
?>