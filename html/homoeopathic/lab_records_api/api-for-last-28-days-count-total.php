<?php
   // header("Contect-type:application/json");
   include "config.php" ;

   // $data=json_decode(file_get_contents("php://input"),true);

   // $name=$data['sname'];

   $sql='SELECT COUNT(OPDNO) AS no,
   SUM(`CBC`) AS a, 
SUM(`E.S.R`) AS b, 
SUM(`MALARIAL PARASITES - MP`) AS c, 
SUM(`BLEEDING AND CLOTTING TIME`) AS d, 
SUM(`BLOOD GROUP`) AS e, 
SUM(`UREA`) AS f, 
SUM(`S.CREATININE`) AS g, 
SUM(`S.BILIRUBIN`) AS h, 
SUM(`TOTAL PROTEIN`) AS i, 
SUM(`ALBUMIN`) AS j, 
SUM(`S.CALCIUM`) AS k, 
SUM(`S.CHOLESTEROL`) AS l, 
SUM(`TRIGLYCERIDES`) AS m, 
SUM(`HDL CHOLESTEROL`) AS n, 
SUM(`S.G.P.T`) AS o, 
SUM(`S.G.O.T`) AS p, 
SUM(`URIC ACID`) AS q, 
SUM(`BLOOD SUGAR RANDOM - RBS`) AS r, 
SUM(`FASTING SUGAR - FBS`) AS s, 
SUM(`PP2BS`) AS t, 
SUM(`LIPID PROFILE`) AS u, 
SUM(`C REACTIVE PROTEIN`) AS v, 
SUM(`WIDAL`) AS w, 
SUM(`V.D.R.L`) AS x, 
SUM(`DENGUE IGG IGM`) AS y, 
SUM(`CHIKUNGUNYA IGM`) AS z, 
SUM(`URINE ROUTINE`) AS aa, 
SUM(`PREGNANCY TEST`) AS ab, 
SUM(`25 VITAMIN D`) AS ac, 
SUM(`VITAMIN B12`) AS ad, 
SUM(`HBA1C`) AS ae, 
SUM(`T3 T4 TSH`) AS af, 
SUM(`TSH`) AS ag, 
SUM(`FT3`) AS ah, 
SUM(`FT4`) AS ai, 
SUM(`HB ELECTROPHORESIS`) AS aj, 
SUM(`ANA`) AS ak, 
SUM(`HCG`) AS al, 
SUM(`FSH LH PROLACTINE`) AS am, 
SUM(`LIPID PROFILE 2`) AS an, 
SUM(`LUTEINIZING HORMONE SERUM`) AS ao, 
SUM(`TORCH IGG IGM ABS - PARAMETER 8`) AS ap, 
SUM(`FERRITIN`) AS aq, 
SUM(`HOMOCYSTEINE`) AS ar, 
SUM(`ANTI CCP`) AS as1, 
SUM(`CA 125`) AS at1, 
SUM(`ALIPOPROTEINS`) AS au, 
SUM(`CRP`) AS av, 
SUM(`ELECTROLYTES`) AS aw, 
SUM(`G6PD`) AS ax, 
SUM(`CKP TOTAL SERUM`) AS ay, 
SUM(`LDH`) AS az, 
SUM(`CKMB`) AS ba, 
SUM(`LIPASE SERUM`) AS bb, 
SUM(`IRON`) AS bc, 
SUM(`TIBC`) AS bd, 
SUM(`CA 125 2`) AS be, 
SUM(`PSA TOTAL PROSTATE SPECIFIC ANTIGEN`) AS bf, 
SUM(`AMYLASE ENZYMATIC SERUM`) AS bg, 
SUM(`PHOSPHORUS INORGANIC SERUM`) AS bh, 
SUM(`CALCIUM TOTAL SERUM`) AS bi, 
SUM(`ALKALINE PHOSPHATATE ENZYMATIC`) AS bj, 
SUM(`DENGUE IGG ANTIBODY`) AS bk, 
SUM(`DENGUE IGM ANTIBODY`) AS bl, 
SUM(`DENGUE NS1 ANTIGEN`) AS bm, 
SUM(`TYPHI DOT IGG AND IGM`) AS bn, 
SUM(`AMMONIA BIOCHEMICAL PLASMA`) AS bo, 
SUM(`RA RHEUMATOID ARTHRITIS SERUM`) AS bp, 
SUM(`THYROID ANTIBODIES TPO AND ATG`) AS bq, 
SUM(`ABSOLUTE EOSINOPHILE COUNT`) AS br, 
SUM(`SEMEN ANALYSIS`) AS bs, 
SUM(`ROUTINE EXAMINATION STOOL`) AS bt, 
SUM(`HIV`) AS bu, 
SUM(`HBSAG`) AS bv, 
SUM(`D DIMER`) AS bw, 
SUM(`HCV`) AS bx 
   FROM inventory_homoeopathic_lab where date > now() - INTERVAL 28 day;';
 

  
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