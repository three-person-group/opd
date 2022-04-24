<?php  

include 'config.php';
include 'header.php';

session_start();

error_reporting(0);

if (!isset($_SESSION['username'])) {
    header("Location: temp_login.php");
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style9.css">
    <title>Slidebar </title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://code.iconify.design/2/2.2.1/iconify.min.js"></script>

    <style>
        .main{
         margin-block-start: -54px;

        }
        .body{
            padding-inline-end: 0px;
            margin-block-start: 0px;
            padding-right: 0px;
        }
        .topbar{
            background: #876dee;
        }
        h2 {
    display: block;
    font-size: 2em;
    margin-block-start: -42.33px;
    margin-block-end: -0.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
    </style>
</head>

<body>

    <div class="container">
        <div class="navigation">

            <ul>
                <li>
                    <a href="#" >
                        <span class="icon">
                        <span class="iconify" data-icon="cil:medical-cross" style="font-size: 28px;"></span>
                        </span>
                        <span class="title">OPD user </span>
                </li>
                <li>
                    <a href="#" id="Active_Patient">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">Dashboard</span>
                </li>
                <li>
                    <a href="#" id="patient_reg">
                        <span class="icon">
                            <ion-icon name="people"></ion-icon>
                        </span>
                        <span class="title">Patient Registeration</span>
              
                <li>
                    <a href="#" id="Old_Patient">
                        <span class="icon">
                        <span class="iconify" data-icon="akar-icons:search" style="font-size: 28px;"></span>
                            <!-- <ion-icon name="settings-outline"></ion-icon> -->
                        </span>
                        <span class="title">Follow Up</span>
                </li>
                <li>
                    <a href="#" id="Search_Patient">
                        <span class="icon">
                        <span class="iconify" data-icon="ri:user-search-line" style="font-size: 28px;"></span>                            <!-- <ion-icon name="settings-outline"></ion-icon> -->
                        </span>
                        <span class="title">Search Patient</span>
                </li>
                <!-- <li>
                    <a href="#" id="Search_Patient2">
                        <span class="icon">
                            <ion-icon name="settings-outline"></ion-icon>
                        </span>
                        <span class="title">Search Patient 2</span>
                </li> -->
                <li>
                    <a href="#" id="revoke">
                        <span class="icon">
                        <span class="iconify" data-icon="fluent:document-table-16-regular" style="font-size: 28px;"></span>
                            <!-- <ion-icon name="chatbubble-outline"></ion-icon> -->
                        </span>
                        <span class="title">Revoke</span>
                </li>
                 <li>
                    <a href="#" id="delete">
                        <span class="icon">
                        <span class="iconify" data-icon="heroicons-outline:document-remove" style="font-size: 28px;"></span>                            <!-- <ion-icon name="lock-closed-outline"></ion-icon> -->
                        </span>
                        <span class="title">Remove</span>
                </li> 
                <li>
                    <a href="#" id="logOut">
                        <span class="icon">
                            <ion-icon name="log-out-outline"></ion-icon>
                        </span>
                        <span class="title">Sign Out </span>
                </li>
                <label><br><br><br><br><br><br><br><br><br><br><br><br><br><br></label>
                

            </ul>
        </div>
            <div class="main">
                <div class="topbar">
                    <div class="toggle">
                        <ion-icon name="menu-outline"></ion-icon>
                    </div> 
                    <!-- <div class="search"><label><input type="text" placeholder="Search Here...">
                            <ion-icon name="search-outline">
                        </label>
                    </div><br /> -->

                 </div>

                <div id="content" style="background-color:#9980fa ; position:absolute; height: 100%; width:100%;"></div>
            </div>


        
    </div>

        <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
        <!-- https://fontawesome.com -->
        <script>

            $(document).ready(function(){

                myFunction2();

            let toggle = document.querySelector('.toggle');
            let navigation = document.querySelector('.navigation');
            let main = document.querySelector('.main');

            toggle.onclick = function () {
                navigation.classList.toggle('active');
                main.classList.toggle('active');

            }


            let list = document.querySelectorAll('.navigation li');
            function activeLink() {
                list.forEach((item) =>
                item.classList.remove('hovered2'));
                this.classList.add('hovered2');

            }
            list.forEach((item) =>
                // item.addEventListener('mouseover', activeLink));
                item.addEventListener('click', activeLink));



            document.getElementById("patient_reg").onclick = function () { myFunction1() };
            function myFunction1() {
                // $('.open_links').load("patient_register.php");
                //  document.getElementById("content").load("patient_register.php");
                document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/opd_reg.html"></object>';
            }
            document.getElementById("Active_Patient").onclick = function () { myFunction2() };
            function myFunction2() {
                document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/patient_process.html"></object>';
            }
            document.getElementById("Old_Patient").onclick = function () { myFunction3() };
            function myFunction3() {
                document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/existing_patient.html"></object>';
            }
            document.getElementById("Search_Patient").onclick = function () { myFunction4() };
            function myFunction4() {
                document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/histryOfPatient,html.html"></object>';
            }
            // document.getElementById("Search_Patient2").onclick = function () { myFunction33() };
            // function myFunction33() {
            //     document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/temp_search.php"></object>';
            // }
            // document.getElementById("bill").onclick = function () { myFunction5() };
            // function myFunction5() {
            //     document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="bill.html"></object>';
            // }
            document.getElementById("delete").onclick = function () { myFunction21() };
            function myFunction21() {
                document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/delete_patient.html"></object>';
            }

            // Active_Patient
             document.getElementById("revoke").onclick = function () { myFunction6() };
            function myFunction6() {
                document.getElementById("content").innerHTML= '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/revoke.html"></object>';
            }

            document.getElementById("logOut").onclick = function () { myFunction100() };
            function myFunction100() {
                location.href = "http://localhost:3000/html/homoeopathic/logout.php"
             }


        });

        </script>


</body>

</html>