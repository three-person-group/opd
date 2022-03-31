<?php  

include 'config.php';

session_start();

error_reporting(0);

/*if (!isset($_SESSION['username'])) {
    header("Location: GK_Login.php");
}*/
?>
<!DOCTYPE html>
<html>
<head>

<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  padding: 10px;
  background: #a29bfe;
}

/* Header/Blog Title */
.header {
  padding: 20px;
  text-align: right;
  background-color: white;
}
.logo-container{
    padding-bottom: 80px;
    padding-left: 30px;
}
.logo-container img{
	height: 160px;
	width : 160px;
	padding: 20px;
	float: left;
	flex: 2;
    color: gray;
    cursor: pointer;
}

.header h1 {
  font-size: 40px;
  background-color:white;
  /* margin-block-start: -43px; */
}


/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color: black;
}

/* Style the topnav links */
.topnav a {
  float: right;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: white;
  color: black;
  transition: .3s;
}



/* Footer 
.footer {
  padding: 20px;
  text-align: center;
  background: black;
  margin-top: 20px;
  color: white;
}*/
</style>
</head>
<body>
<div class="header">
<!-- <div class="logo-container">
	 <img src="img/agrawal.jfif" alt="logo"> 
</div> -->
  <h1 id="moj">S.S.AGRAWAL</h1>
  <p><u>AYURVEDIC HOMYOPATHIC AND GENERAL HOSPITAL DEPT.</u></p>
</div>

<div class="topnav">
  <a href="#" style="float:left"><?php echo "Welcome " . $_SESSION['username']; ?></a>
  <a href="logout.php">Logout</a>
  <a href="GK_Feedback.php">Feedback</a>
  <a href="GK_Aboutus.php">About us</a>
  <a href="GK_Gallary.php">Gallary</a>
  <a href="GK_Welcome_amj.php">Home</a>
  <!--<a class="re-lo" href="GK_Register.php">Register</a>
  <a class="re-lo" href="GK_Login.php">Login</a>-->
</div>

<!--<div class="footer">
  <h2>@All rights reserved.</h2>
</div>-->
</body>
</html>