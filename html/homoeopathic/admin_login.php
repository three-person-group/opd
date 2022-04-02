<?php 

include 'config.php';

session_start();

error_reporting(0);

if (isset($_SESSION['username'])) {
    header("Location: gk_slidbar_for_admin.php");
}

if (isset($_POST['submit'])) {
	$username = $_POST['username'];
	$password = $_POST['password'];

	$sql = "SELECT * FROM admin_register WHERE username='$username' AND password='$password'";
	$result = mysqli_query($conn, $sql);
	if ($result->num_rows > 0) {
		$row = mysqli_fetch_assoc($result);
		$_SESSION['username'] = $row['username'];
		header("Location:gk_slidbar_for_admin.php");
	}
		// echo $_SESSION['role'];
		// if($_SESSION['role']=="opd")
		// {

		// 	header("Location: http://localhost:3000/html/homoeopathic/gk2_slidebar.php");
		// }
		// elseif($_SESSION['role']=="lab")
		// {

		// 	header("Location: http://localhost:3000/html/homoeopathic/lab_man.html");
		// }
	else {
		echo "<script>alert('Woops! Email or Password is Wrong.')</script>";
	}

	// session_destroy();
}


?>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="gk_style2.css">

<!-- <link rel="stylesheet" type="text/css" href="style1.css"> -->

	<title>ADMIN LOGIN:</title>
</head>
<body>
	<div class="container">
		<form action="" method="POST" class="login-email">
			<p class="login-text" style="font-size: 2rem; font-weight: 800;">ADMIN LOGIN:</p>
			<div class="input-group">
				<input type="text" placeholder="Username" name="username" value="<?php echo $username; ?>" required>
			</div>
			<div class="input-group">
				<input type="password" placeholder="Password" name="password" value="<?php echo $_POST['password']; ?>" required>
			</div>
			<div class="input-group">
				<button name="submit" class="btn">Login</button>
			</div>
	
			<p class="login-register-text">Are You Member? <a href="member_login.php">Login As MEMBER</a></p>
		</form>
	</div>
</body>
</html>
