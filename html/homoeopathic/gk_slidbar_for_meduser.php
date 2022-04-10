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
    <style>
        .main{
         margin-block-start: -54px;

        }
        .body{
            padding-inline-end: 0px;
            margin-block-start: 0px;
            padding-right: 0px;
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
                            <ion-icon name="logo-apple"></ion-icon>
                        </span>
                        <span class="title">MEDICINE user </span>
                </li>
                <li>
                    <a href="#" id="Active_Patient">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">Dashboard</span>
                </li>
                <!-- <li>
                    <a href="#" id="payment_status">
                        <span class="icon">
                            <ion-icon name="people"></ion-icon>
                        </span>
                        <span class="title">Payment Status</span>
                </li> -->
                <li>
                    <a href="#" id="Search_Patient2">
                        <span class="icon">
                            <ion-icon name="settings-outline"></ion-icon>
                        </span>
                        <span class="title">Search Patient</span>
                </li>
                <li>
                    <a href="#" id="Inventory_dispencery_ch">
                        <span class="icon">
                            <ion-icon name="chatbubble-outline"></ion-icon>
                        </span>
                        <span class="title">Stock Of Medicine</span>
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

                <div id="content" style="background-color:lightskyblue; position:absolute; height: 100%; width:100%;">Hello
                    World!!!!</div>
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



           
            document.getElementById("Active_Patient").onclick = function () { myFunction2() };
            function myFunction2() {
                document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/patient_process_med.html"></object>';
            }
            
            // document.getElementById("Inventory_dispencery_ch").onclick = function () { myFunction3() };
            // function myFunction3() {
            //     document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/medicine_recordes.html"></object>';
            // }
            
            document.getElementById("Search_Patient2").onclick = function () { myFunction33() };
            function myFunction33() {
                document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/temp_search.php"></object>';
            }
            document.getElementById("Inventory_dispencery_ch").onclick = function () { myFunction4() };
            function myFunction4() {
                document.getElementById("content").innerHTML = '<object type="text/html/php" style="height:100%; width:100%;" data="http://localhost:3000/html/homoeopathic/medicine_recordes.html"></object>';
            }
            document.getElementById("logOut").onclick = function () { myFunction100() };
            function myFunction100() {
                location.href = "http://localhost:3000/html/homoeopathic/logout.php"
             }


        });

        </script>


</body>

</html>
