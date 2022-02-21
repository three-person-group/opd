<?php

include 'config.php';
// header("Content-Type:application/json");
// header("Access-Control-Allow-Method:delete");

// $data=json_decode(file_get_contents("php://input"),true);

// $lab_name=$data['slab_name'];

$lab_name=$post['TESTNAME'];

// $srno = isset($_GET['ssrno']) ? $_GET['ssrno'] : die();

$sql11="SELECT TESTNAME FROM homoeopathic_lab WHERE TESTNAME LIKE '%{$lab_name}%';";


$result=$conn->query($sql11);
$output="<ul>";
if($result->num_rows >0)
{
   while($row=mysqli_fetch_assoc($result))
   {
      $output.="<li>{$row['TESTNAME']}<li>";
   }
// $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
// echo json_encode($output);

}
else{
   $output.="<li>city not found<li>";
   
   // echo json_encode(array("message"=>"data not searched","status"=>false));
}
$output.="<ul>";

echo $output;
?>