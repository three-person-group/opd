<?php 

include 'config.php';

session_start();

error_reporting(0);

if (isset($_SESSION['username'])) {
    header("Location: gk2_slidebar.php");
}

if (isset($_POST['submit'])) {
	$username = $_POST['username'];
	$password = $_POST['password'];

	$sql = "SELECT * FROM member_register WHERE username='$username' AND password='$password'";
	$result = mysqli_query($conn, $sql);
	if ($result->num_rows > 0) {
		$row = mysqli_fetch_assoc($result);
		$_SESSION['username'] = $row['username'];
		$_SESSION['email'] = $row['email'];
		$_SESSION['role'] = $row['role'];
		echo $_SESSION['role'];
		if($_SESSION['role']=="opd")
		{

			header("Location: http://localhost:3000/html/homoeopathic/gk2_slidebar.php");
		}
		elseif($_SESSION['role']=="lab")
		{

			header("Location: http://localhost:3000/html/homoeopathic/gk_slidbar_for_labuser.php");
		}
		elseif($_SESSION['role']=="medicine")
		{

			header("Location: http://localhost:3000/html/homoeopathic/gk_slidbar_for_meduser.php");
		}
		elseif($_SESSION['role']=="admin")
		{

			header("Location: http://localhost:3000/html/homoeopathic/gk_slidbar_for_admin.php");
		}
	} else {
		echo "<script>alert('Woops! Email or Password is Wrong.')</script>";
	}

}


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<link rel="stylesheet" href="temp.css">


</head>
	
<body>

<div class="container" id="container">
	<div class="form-container sign-up-container">
	<form action="" method="POST" class="login-email">
			<h1>Login As ADMIN</h1><br><br>
			<div class="input-group">
			<input type="text" placeholder="Username" name="username" value="<?php echo $username; ?>" required>
			<input type="password" placeholder="Password" name="password" value="<?php echo $_POST['password']; ?>" required><br><br>
			</div>
			<button name="submit" class="btn">Login</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
	<form action="" method="POST" class="login-email">
			<h1>Login As USER</h1><br><br>
			<div class="input-group">
			<input type="text" placeholder="Username" name="username" value="<?php echo $username; ?>" required>
			<input type="password" placeholder="Password" name="password" value="<?php echo $_POST['password']; ?>" required><br><br>
			</div>
			<button name="submit" class="btn">Login</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Welcome Back ADMIN!</h1>
				<p><br>Are you a <b>User?<br> <br> <br>Login As User</b> With Below Login Button.</p>
				<button class="ghost" id="signIn">Sign In</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Welcome Back USER!</h1>
				<p><br>Are you a <b>ADMIN?<br> <br> <br>Login As ADMIN</b> With Below Login Button.</p>
				<button class="ghost" id="signUp">Sign In</button>
			</div>
		</div>
	</div>
</div><p style="color:white; font-size:20px;"><b>Are You Patient?</b> <a style="color:blue;font-size:20px;" href="patient_login.html"><b><u> Login As Patient</u></b></a></p>
<script>
const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const container = document.getElementById('container');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});
</script>
</body>
</html>