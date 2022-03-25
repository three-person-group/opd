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
$qty1=$data['sqty1'];
$qty2=$data['sqty2'];
$qty3=$data['sqty3'];

$opdno=$data['sopdno'];
$date=$data['sdate'];




$sql1="select * from inventory_homoeopathic_othercharge WHERE opdno='{$opdno}' AND date='{$date}';";

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
            
        $sql1 = "UPDATE inventory_homoeopathic_othercharge 
        SET `{$medicinename1}`={$qty1}
        WHERE OPDNO={$opdno} AND DATE='{$date}'";                 
        
        if ($conn->query($sql1)) {
            echo json_encode(array("message" => "data inserted", "status" => true));
        } else {
            echo json_encode(array("message" => "data not inserted", "status" => false));
        
        }

    }

    
    if($medicinename2 == ""){}else{

        $sql2 = "UPDATE inventory_homoeopathic_othercharge 
        SET `{$medicinename2}`={$qty2}
        WHERE OPDNO={$opdno} AND DATE='{$date}'";
    
        if ($conn->query($sql2)) {
            echo json_encode(array("message" => "data inserted", "status" => true));
        } else {
            echo json_encode(array("message" => "data not inserted", "status" => false));
        }
        
    }

    if($medicinename3 == ""){}else{

        $sql3 = "UPDATE inventory_homoeopathic_othercharge 
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
        $sql2="insert into inventory_homoeopathic_othercharge (date,opdno) values('{$date}','{$opdno}');";


        if($conn->query($sql2))
        {
        echo json_encode(array("message"=>"data inserted in Consulting","status"=>true));
        }
        else{
        
        echo json_encode(array("message"=>"data not inserted Consulting","status"=>false));
        }
        // update();


        if($medicinename1 == ""){}else{
                
            $sql1 = "UPDATE inventory_homoeopathic_othercharge 
            SET `{$medicinename1}`={$qty1}
            WHERE OPDNO={$opdno} AND DATE='{$date}'";                 //HAVE TO GIVE OPDNO IN JS ajex FILE
            
            if ($conn->query($sql1)) {
                echo json_encode(array("message" => "data update", "status" => true));
            } else {
                echo json_encode(array("message" => "data not inserted", "status" => false));
            
            }

        }

        
        if($medicinename2 == ""){}else{

            $sql2 = "UPDATE inventory_homoeopathic_othercharge 
            SET `{$medicinename2}`={$qty2}
            WHERE OPDNO={$opdno} AND DATE='{$date}'";
        
            if ($conn->query($sql2)) {
                echo json_encode(array("message" => "data inserted", "status" => true));
            } else {
                echo json_encode(array("message" => "data not inserted", "status" => false));
            }
            
        }
 
        if($medicinename3 == ""){}else{

            $sql3 = "UPDATE inventory_homoeopathic_othercharge 
            SET `{$medicinename3}`={$qty3}
            WHERE OPDNO={$opdno} AND DATE='{$date}'";
        
            if ($conn->query($sql3)) {
                echo json_encode(array("message" => "data inserted", "status" => true));
            } else {
                echo json_encode(array("message" => "data not inserted", "status" => false));
            
            }
        }

    }




?>
