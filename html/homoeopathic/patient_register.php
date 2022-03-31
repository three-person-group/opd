<?php 

include 'config.php';

error_reporting(0);

session_start();

if (isset($_POST['submit'])) 
{
	$pname = $_POST['pname'];
	$age = $_POST['age'];
	$gender = $_POST['gender'];
	$address = $_POST['address'];
	$city = $_POST['city'];
	$mobileno = $_POST['mobileno'];
	$date = date("y-m-d");
	$occupation = $_POST['occupation'];
	
	$sql = "INSERT INTO `patient_register` (`pname`, `age`, `gender`, `address`, `city`, `mobileno`, `date`, `occupation`)
			VALUES ('$pname', '$age', '$gender', '$address', '$city', '$mobileno', '$date', '$occupation')";
	$result = mysqli_query($conn, $sql);
	if ($result) 

	{	
		
		popupYes();
		// echo "<script>alert('Wow! Patient Registration Completed.')</script>";
		$pname = "";
		$age = "";
		$gender = "";
		$address = "";
		$city = "";
		$mobileno = "";
		$date = "";
		$occupation = "";
		
	} 
	else 
	{
		echo "<script>alert(`Woops! Something Went Wrong.,$conn->error`)</script>";
	}

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Registration</title>
	<link rel="stylesheet" href="">
	<link rel="stylesheet" type="text/css" href="style_amj.css">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
<div class="container">
		<form action="" method="POST" class="login-email">
        <p class="login-text" style="font-size: 2rem; font-weight: 800;">Patient Registration :</p>   
    
        <div class="input-group">
			<span class="lbl">Patient Name:</span>
			<input type="text" placeholder="Patient Name" name="pname" value="<?php echo $pname; ?>" required><br><br>
        </div>
        <div class="input-group">
			<span class="lbl">Age:</span>
            <input type="number" placeholder="Age" name="age" value="<?php echo $age; ?>" required><br><br>
        </div>
        <div class="radio-group">
		<span class="lbl">Gender:</span>
            <input type="radio" name="gender" style="height:25px; width:20px;" value="<?php echo $gender; ?>" required> <label for="male"> Male</label>
			<input type="radio" name="gender" style="height:25px; width:20px;" value="<?php echo $gender; ?>" required> <label for="female"> Female</label>
			<input type="radio" name="gender" style="height:25px; width:20px;" value="<?php echo $gender; ?>" required> <label for="other"> Other</label><br><br>
        </div>
        <div class="input-group">
			<span class="lbl">Address:</span>
            <textarea row="5" cols="40" placeholder="Address" name="address" value="<?php echo $address; ?>" required></textarea><br><br>
        </div>
        <div class="input-group">
			<span class="lbl">City:</span>
            <input type="text" placeholder="City" name="city" value="<?php echo $city; ?>" required><br><br>
        </div>
        <div class="input-group">
			<span class="lbl">Mobile Number:</span>
            <input type="number" placeholder="Mobile Number" name="mobileno" value="<?php echo $mobileno; ?>" required><br><br>
        </div>
       
		
        <div class="input-group">
			<span class="lbl">Occupation:</span>
            <input type="text" placeholder="Occupation" name="occupation" value="<?php echo $occupation; ?>" required>  <br><br>   
        </div>
		<div class="input-group">
			<span class="lbl">Registration Charges:</span>
            <input type="number" placeholder="Registration Charges" name="reg_charge" value="20" required><br><br>
        </div>
        <div class="input-group">
				<button name="submit" class="btn">SUBMIT</button>
		</div>
		<script>
			function popupYes(){
				swal("Good Job!","Wow! Patient Registration Completed.","success");
			}
		</script>
        </form>
</div>
</body>
</html>


