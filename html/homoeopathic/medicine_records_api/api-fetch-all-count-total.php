<?php
   // header("Contect-type:application/json");
   include "config.php" ;

   // $data=json_decode(file_get_contents("php://input"),true);

   // $name=$data['sname'];

   $sql='SELECT COUNT(OPDNO) AS no,
   sum(`1 WEEK DISPENSARY CHARGES`) AS a,
sum(`2 WEEK DISPENSARY CHARGES`) AS b,
sum(`BIO CHEMIC 1 WEEK`) AS c,
sum(`BIO CHEMIC 2 WEEK`) AS d,
sum(`MOTHER TINCHER 1 WEEK`) AS e,
sum(`MOTHER TINCHER 2 WEEK`) AS f,
sum(`MINOR DRESSING`) AS g,
sum(`MAJOR DRESSING(DEPENDS ON DRESSING)`) AS h,
sum(`STICHES(1ST STITCH)`) AS i,
sum(`OTHER STITCH`) AS j,
sum(`INJECTION`) AS k,
sum(`ECG`) AS l
   FROM inventory_homoeopathic;';

   $result=$conn->query($sql);

   if($result->num_rows >0)
   {
      $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
      echo json_encode($output);
   }
   else
   {
      echo json_encode(array("message"=>"data not found","status"=>false));
   }




?>