<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

// $srno=$data['ssrno'];
// $perticular=$data['sperticular'];
// $charges=$data['scharges'];


$stestname1 = $data['stestname1'];
$stestname2 = $data['stestname2'];
$stestname3 = $data['stestname3'];
$stestname4 = $data['stestname4'];
$stestname5 = $data['stestname5'];
$stestname6 = $data['stestname6'];
$sqty1=$data['sqty1'];
$sqty2=$data['sqty2'];
$sqty3=$data['sqty3'];
$sqty4=$data['sqty4'];
$sqty5=$data['sqty5'];
$sqty6=$data['sqty6'];

$sopdno=$data['sopdno'];
$sdate=$data['sdate'];


$sql1="select * from inventory_homoeopathic_lab WHERE opdno='{$sopdno}' AND date='{$sdate}';";

if($conn->query($sql1))
{

}


$result=$conn->query($sql1);

if($result->num_rows >0)
{
   $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
 
   // echo json_encode($output);
   //   update();
   echo json_encode(array("message"=>"Already patient reg for LAB so now updating","status"=>true));

    if($stestname1 == ""){}else{
        
        $sql11 = "UPDATE inventory_homoeopathic_lab 
        SET `{$stestname1}`={$sqty1}
        WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";  

        //  HAVE TO GIVE OPDNO IN JS ajex FILE
        
        if ($conn->query($sql11)) {
            echo json_encode(array("message" => "data inserted", "status" => true));
        } else {
            echo json_encode(array("message" => "data not UPDATE", "status" => false));
        
        }

    }

    if($stestname2 == ""){}else{

        $sql2 = "UPDATE inventory_homoeopathic_lab 
        SET `{$stestname2}`={$sqty2}
        WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
    
        if ($conn->query($sql2)) {
            echo json_encode(array("message" => "data inserted", "status" => true));
        } else {
            echo json_encode(array("message" => "data not inserted", "status" => false));
        }
    
    }
if($stestname3 == ""){}else{

    $sql3 = "UPDATE inventory_homoeopathic_lab 
    SET `{$stestname3}`={$sqty3}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
   
   if ($conn->query($sql3)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   
   }
}

if($stestname4 == ""){}else{

    $sql4 = "UPDATE inventory_homoeopathic_lab 
    SET `{$stestname4}`={$sqty4}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
   
   if ($conn->query($sql4)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   
   }
}

if($stestname5 == ""){}else{

    $sql5 = "UPDATE inventory_homoeopathic_lab 
    SET `{$stestname5}`={$sqty5}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
   
   if ($conn->query($sql5)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   
   }
}


}

else
{
    $sql22="insert into inventory_homoeopathic_lab (date,opdno) values('{$sdate}','{$sopdno}');";


    if($conn->query($sql22))
    {
    echo json_encode(array("message"=>"DATE AND OPDNO inserted in LAB","status"=>true));
    }
    else{
    
    echo json_encode(array("message"=>"DATE AND OPDNO not inserted LAB","status"=>false));
    }

    if($stestname1 == ""){}else{
        
        $sql21 = "UPDATE inventory_homoeopathic_lab 
        SET `{$stestname1}`={$sqty1}
        WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";   

        //  HAVE TO GIVE OPDNO IN JS ajex FILE
        
        if ($conn->query($sql21)) {
            echo json_encode(array("message" => "data inserted", "status" => true));
        } else {
            echo json_encode(array("message" => "data not UPDATE", "status" => false));
        
        }

    }

if($stestname2 == ""){}else{

    $sql2 = "UPDATE inventory_homoeopathic_lab 
    SET `{$stestname2}`={$sqty2}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
   
   if ($conn->query($sql2)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   }
   
}

if($stestname3 == ""){}else{

    $sql3 = "UPDATE inventory_homoeopathic_lab 
    SET `{$stestname3}`={$sqty3}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
   
   if ($conn->query($sql3)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   }
   
}
if($stestname4 == ""){}else{

    $sql4 = "UPDATE inventory_homoeopathic_lab 
    SET `{$stestname4}`={$sqty4}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
   
   if ($conn->query($sql4)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   
   }
}
if($stestname5 == ""){}else{

    $sql5 = "UPDATE inventory_homoeopathic_lab 
    SET `{$stestname5}`={$sqty5}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
   
   if ($conn->query($sql5)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   
   }
}
if($stestname6 == ""){}else{

    $sql6 = "UPDATE inventory_homoeopathic_lab 
    SET `{$stestname6}`={$sqty6}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
   
   if ($conn->query($sql6)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   
   }
}

}
?>