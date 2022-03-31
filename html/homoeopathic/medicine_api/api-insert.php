<?php
include 'config.php';

header("Content-Type:Application/json");
header("access-control-allow-method:post");

$data = json_decode(file_get_contents("php://input"), true);

// $srno=$data['ssrno'];
// $perticular=$data['sperticular'];
// $charges=$data['scharges'];


$medicinename1 = $data['smedicinename1'];
$medicinename2 = $data['smedicinename2'];
$medicinename3 = $data['smedicinename3'];
$medicinename4 = $data['smedicinename4'];
$medicinename5 = $data['smedicinename5'];
$medicinename6 = $data['smedicinename6'];
$qty1=$data['sqty1'];
$qty2=$data['sqty2'];
$qty3=$data['sqty3'];
$qty4=$data['sqty4'];
$qty5=$data['sqty5'];
$qty6=$data['sqty6'];

$opdno=$data['sopdno'];
$date=$data['sdate'];




$sql1="select * from inventory_homoeopathic_dispcharge WHERE opdno='{$opdno}' AND date='{$date}';";

if($conn->query($sql1))
{

}

   $result=$conn->query($sql1);

   if($result->num_rows >0)
   {
      $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
    
      // echo json_encode($output);
      //   update();
      echo json_encode(array("message"=>"Already patient reg for dispcharge so now updating","status"=>true));


    if($medicinename1 == ""){}else{
            
        $sql1 = "UPDATE inventory_homoeopathic_dispcharge 
        SET `{$medicinename1}`={$qty1}
        WHERE OPDNO={$opdno} AND DATE='{$date}'";                 
        
        if ($conn->query($sql1)) {
            echo json_encode(array("message" => "data inserted", "status" => true));
        } else {
            echo json_encode(array("message" => "data not inserted", "status" => false));
        
        }

    }

    
    if($medicinename2 == ""){}else{

        $sql2 = "UPDATE inventory_homoeopathic_dispcharge 
        SET `{$medicinename2}`={$qty2}
        WHERE OPDNO={$opdno} AND DATE='{$date}'";
    
        if ($conn->query($sql2)) {
            echo json_encode(array("message" => "data inserted", "status" => true));
        } else {
            echo json_encode(array("message" => "data not inserted", "status" => false));
        }
        
    }

    if($medicinename3 == ""){}else{

        $sql3 = "UPDATE inventory_homoeopathic_dispcharge 
        SET `{$medicinename3}`={$qty3}
        WHERE OPDNO={$opdno} AND DATE='{$date}'";
    
        if ($conn->query($sql3)) {
            echo json_encode(array("message" => "data inserted", "status" => true));
        } else {
            echo json_encode(array("message" => "data not inserted", "status" => false));
        
        }
    }


   
   }

   else
    {
        $sql2="insert into inventory_homoeopathic_dispcharge (date,opdno) values('{$date}','{$opdno}');";


        if($conn->query($sql2))
        {
        echo json_encode(array("message"=>"data inserted in Consulting","status"=>true));
        }
        else{
        
        echo json_encode(array("message"=>"data not inserted Consulting","status"=>false));
        }
        // update();


        if($medicinename1 == ""){}else{
                
            $sql1 = "UPDATE inventory_homoeopathic_dispcharge 
            SET `{$medicinename1}`={$qty1}
            WHERE OPDNO={$opdno} AND DATE='{$date}'";                 //HAVE TO GIVE OPDNO IN JS ajex FILE
            
            if ($conn->query($sql1)) {
                echo json_encode(array("message" => "data update", "status" => true));
            } else {
                echo json_encode(array("message" => "data not inserted", "status" => false));
            
            }

        }

        
        if($medicinename2 == ""){}else{

            $sql2 = "UPDATE inventory_homoeopathic_dispcharge 
            SET `{$medicinename2}`={$qty2}
            WHERE OPDNO={$opdno} AND DATE='{$date}'";
        
            if ($conn->query($sql2)) {
                echo json_encode(array("message" => "data inserted", "status" => true));
            } else {
                echo json_encode(array("message" => "data not inserted", "status" => false));
            }
            
        }
 
        if($medicinename3 == ""){}else{

            $sql3 = "UPDATE inventory_homoeopathic_dispcharge 
            SET `{$medicinename3}`={$qty3}
            WHERE OPDNO={$opdno} AND DATE='{$date}'";
        
            if ($conn->query($sql3)) {
                echo json_encode(array("message" => "data inserted", "status" => true));
            } else {
                echo json_encode(array("message" => "data not inserted", "status" => false));
            
            }
        }
 
        if($medicinename4 == ""){}else{

            $sql4 = "UPDATE inventory_homoeopathic_dispcharge 
            SET `{$medicinename4}`={$qty4}
            WHERE OPDNO={$opdno} AND DATE='{$date}'";
        
            if ($conn->query($sql4)) {
                echo json_encode(array("message" => "data inserted", "status" => true));
            } else {
                echo json_encode(array("message" => "data not inserted", "status" => false));
            
            }
        }
 
        if($medicinename5 == ""){}else{

            $sql5 = "UPDATE inventory_homoeopathic_dispcharge 
            SET `{$medicinename5}`={$qty5}
            WHERE OPDNO={$opdno} AND DATE='{$date}'";
        
            if ($conn->query($sql5)) {
                echo json_encode(array("message" => "data inserted", "status" => true));
            } else {
                echo json_encode(array("message" => "data not inserted", "status" => false));
            
            }
        }
 
        if($medicinename6 == ""){}else{

            $sql6 = "UPDATE inventory_homoeopathic_dispcharge 
            SET `{$medicinename6}`={$qty6}
            WHERE OPDNO={$opdno} AND DATE='{$date}'";
        
            if ($conn->query($sql6)) {
                echo json_encode(array("message" => "data inserted", "status" => true));
            } else {
                echo json_encode(array("message" => "data not inserted", "status" => false));
            
            }
        }

    }




?>
