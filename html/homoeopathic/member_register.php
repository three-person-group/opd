<?php 

include 'config.php';

error_reporting(0);

session_start();

if (isset($_SESSION['username'])) {
    header("Location: member_login.php");
}

if (isset($_POST['submit'])) 
{
	$name = $_POST['name'];
	$email = $_POST['email'];
    $mobileno = $_POST['mobileno'];
	$username = $_POST['role']."_".$_POST['name'];
	$password = $_POST['password'];
	$cpassword = $_POST['cpassword'];
	$role = $_POST['role'];

	if ($password == $cpassword) 
	{
		$sql = "SELECT * FROM member_register WHERE email='$email'";
		$result = mysqli_query($conn, $sql);
		if (!$result->num_rows > 0)  
		{
			$sql = "INSERT INTO member_register (name, email, mobileno, username, password, role)
					VALUES ('$name', '$email', '$mobileno', '$username', '$password', '$role')";
			$result = mysqli_query($conn, $sql);
			if ($result) 
			{
				echo "<script>alert('Wow! Member Registration Completed.Your username is: $username')</script>";
				$name = "";
				$email = "";
                $mobileno = "";
				$username = "";
				$_POST['password'] = "";
				$_POST['cpassword'] = "";
				$role = "";
			} 
			else 
			{
				echo "<script>alert('Woops! Something Went Wrong.')</script>";
			}
		} 
		else 
		{
			echo "<script>alert('Woops! Email Already Exists.')</script>";
		}
		
	} 
	else 
	{
		echo "<script>alert('Password Not Matched.')</script>";
	}
}


?>
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<title>Hello, world!</title>
</head>

<body>
	<!-- <h1>Hello, world!</h1> -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>
<!DOCTYPE html>
<html>
<head>

	<link rel="stylesheet" href="">

	<link rel="stylesheet" type="text/css" href="gk_style2.css">

	<title>MEMBER REGISTERATION:</title>
</head>
<body>
	<div class="container">
		<form action="" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">MEMBER REGISTERATION:</p>
			<div class="input-group">
				<input type="text" placeholder="Name" name="name" value="<?php echo $name; ?>" required>
			</div>
			<div class="input-group">
				<input type="email" placeholder="Email" name="email" value="<?php echo $email; ?>" required>
			</div>
            <div class="input-group">
				<input type="number" placeholder="Mobile no" name="mobileno" value="<?php echo $mobileno; ?>" required>
			</div>
			<!-- <div class="input-group">
				<input type="text" placeholder="Username" name="username" value="<?//php echo $username; ?>" required>
			</div> -->
			<div class="input-group">
				<input type="password" placeholder="Password" name="password" value="<?php echo $_POST['password']; ?>" required>
            		</div>
            <div class="input-group">
				<input type="password" placeholder="Confirm Password" name="cpassword" value="<?php echo $_POST['cpassword']; ?>" required>
				<label> Please Select Role : </label>
			</div>
			<div class="radio-group" style="justify-content: space-between;">
				
				<input type="radio" id="opd" name="role" value="opd" style="height:25px; width:20px;">
        			<label for="opd">OPD</label>
				<input type="radio" id="medicine" name="role" value="medicine" style="height:25px; width:20px;">
        			<label for="medicine">MEDICINE</label>
        		<input type="radio" id="lab" name="role" value="lab" style="height:25px; width:20px;">
        			<label for="lab">LAB</label><br><br>
			</div>
			<div class="input-group">
				<button name="submit" class="btn">Register</button>
			</div>
			<p class="login-register-text">Have an account? <a href="member_login.php">Login As Member</a>.</p>
		</form>
	</div>
</body>
</html>

<?php /* Table creation
CREATE TABLE `project`.`opd_member_register` ( `id` INT(255) NOT NULL AUTO_INCREMENT , `username` VARCHAR(255) NOT NULL , `email` VARCHAR(255) NOT NULL , `mobileno` VARCHAR(255) NOT NULL , `password` VARCHAR(255) NOT NULL , PRIMARY KEY (`id`)) ENGINE = MyISAM;

*/?>