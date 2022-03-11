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
$sqty1=$data['sqty1'];
$sqty2=$data['sqty2'];
$sqty3=$data['sqty3'];
$sopdno=$data['sopdno'];
$sdate=$data['sdate'];

if($stestname1 == ""){}else{
    
    $sql1 = "UPDATE inventory_homoeopathic_lab 
    SET `{$stestname1}`={$sqty1}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";                
    //  HAVE TO GIVE OPDNO IN JS ajex FILE
    
    if ($conn->query($sql1)) {
        echo json_encode(array("message" => "data inserted", "status" => true));
    } else {
        echo json_encode(array("message" => "data not inserted", "status" => false));
    
    }

}

if($stestname2 == ""){}else{

    $sql2 = "UPDATE inventory_homoeopathic 
    SET `{$stestname2}`={$sqty2}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
   
   if ($conn->query($sql2)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   }
   
}
if($stestname3 == ""){}else{

    $sql3 = "UPDATE inventory_homoeopathic 
    SET `{$stestname3}`={$sqty3}
    WHERE OPDNO={$sopdno} AND DATE='{$sdate}'";
   
   if ($conn->query($sql3)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   
   }
}


// working
// 1 insert into inventory_homoeopathic (opdno) values (101)


//2UPDATE inventory_homoeopathic
// SET ECG="1" AND ""="" AND ""=""
// WHERE OPDNO=101;

// UPDATE inventory_homoeopathic
// SET ECG=1 and 
// WHERE OPDNO=101;

// INSERT INTO inventory_homoeopathic (OPDNO,1WEEKDISPENSARYCHARGES)VALUES(101,1);
// arr: Array(3)
// 0: {name: 'smedicinename1', value: '2 WEEK DISPENSARY CHARGES '}
// 1: {name: 'smedicinename2', value: 'MOTHER TINCHER 1 WEEK'}
// 2: {name: 'smedicinename3', value: 'MOTHER TINCHER 2 WEEK'}
// length: 3
// 0: {name: 'medicine', value: 'MOTHER TINCHER 2 WEEK'}
// 1: {name: 'medicine', value: '2 WEEK DISPENSARY CHARGES '}
// 2: {name: 'medicine', value: 'BIO CHEMIC 1 WEEK'}
// length: 3

// cal
// Return value: undefined
// this: button#id-btnsub
// arr: Array(10)
// 0: {name: 'sdate', value: '2022-03-02'}
// 1: {name: 'sopdno', value: 'khjkh'}
// 2: {name: 'spname', value: 'jhgj'}
// 3: {name: 'sage', value: 'hgj'}
// 4: {name: 'sgender', value: 'hg'}
// 5: {name: 'saddress', value: 'jhg'}
// 6: {name: 'scity', value: 'hjg'}
// 7: {name: 'scontact_no', value: 'hjg'}
// 8: {name: 'semail', value: 'hjg'}
// 9: {name: 'scharges', value: '20'}
// length: 10