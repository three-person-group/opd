<?php
    session_start();

    if (isset($_POST['submit']))
    {
        if ($_POST['dept_name'] == 'ayurvedic')
            header("Location: bill_ayurvedic.php");

        elseif($_POST['dept_name'] == 'homyo')
            header("Location: bill_homyo.php");
    }
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SELECT_DEPT</title>
</head>
<body>
<div class="container">
		<form action="" method="POST" class="select_dep">
        <p class="login-text" style="font-size: 2rem; font-weight: 800;">Please select the Department</p>   
        <input type="radio" id="ayurvedic" name="dept_name" value="ayurvedic">
        <label for="ayurvedic"> AYURVEDIC DEPT.</label>
        <input type="radio" id="homyo" name="dept_name" value="homyo">
        <label for="homyo"> HOMYOPAHIC AND GENERAL HOSPITAL</label><br><br>
        <div class="input-group">
				<button name="submit" class="btn">SUBMIT</button>
		</div>
        </form>
</div>
</body>
</html>