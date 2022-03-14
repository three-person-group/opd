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

if($medicinename1 == ""){}else{
    
    $sql1 = "UPDATE inventory_homoeopathic 
    SET `{$medicinename1}`={$qty1}
    WHERE OPDNO={$opdno} AND DATE='{$date}'";                 //HAVE TO GIVE OPDNO IN JS ajex FILE
    
    if ($conn->query($sql1)) {
        echo json_encode(array("message" => "data inserted", "status" => true));
    } else {
        echo json_encode(array("message" => "data not inserted", "status" => false));
    
    }

}

if($medicinename2 == ""){}else{

    $sql2 = "UPDATE inventory_homoeopathic 
    SET `{$medicinename2}`={$qty2}
    WHERE OPDNO={$opdno} AND DATE='{$date}'";
   
   if ($conn->query($sql2)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   }
   
}
if($medicinename3 == ""){}else{

    $sql3 = "UPDATE inventory_homoeopathic 
    SET `{$medicinename3}`={$qty3}
    WHERE OPDNO={$opdno} AND DATE='{$date}'";
   
   if ($conn->query($sql3)) {
       echo json_encode(array("message" => "data inserted", "status" => true));
   } else {
       echo json_encode(array("message" => "data not inserted", "status" => false));
   
   }
}


// jsonInsertData: "{\"smedicinename1\":\"2 WEEK DISPENSARY CHARGES \",\"medicinename2\":\"1 WEEK DISPENSARY CHARGES \"}"
// jsonInsertDataOfQty: "{\"qty1\":\"1\",\"qty2\":\"1\"}"
// jsonname1: "{\"opdno\":\"109\",\"date\":\"2022-03-04\"}"


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
// 1: {name: 'medicinename2', value: 'MOTHER TINCHER 1 WEEK'}
// 2: {name: 'medicinename3', value: 'MOTHER TINCHER 2 WEEK'}
// length: 3
// 0: {name: 'medicine', value: 'MOTHER TINCHER 2 WEEK'}
// 1: {name: 'medicine', value: '2 WEEK DISPENSARY CHARGES '}
// 2: {name: 'medicine', value: 'BIO CHEMIC 1 WEEK'}
// length: 3

// cal
// Return value: undefined
// this: button#id-btnsub
// arr: Array(10)
// 0: {name: 'date', value: '2022-03-02'}
// 1: {name: 'opdno', value: 'khjkh'}
// 2: {name: 'spname', value: 'jhgj'}
// 3: {name: 'sage', value: 'hgj'}
// 4: {name: 'sgender', value: 'hg'}
// 5: {name: 'saddress', value: 'jhg'}
// 6: {name: 'scity', value: 'hjg'}
// 7: {name: 'scontact_no', value: 'hjg'}
// 8: {name: 'semail', value: 'hjg'}
// 9: {name: 'scharges', value: '20'}
// length: 10