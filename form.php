<?php
session_start();
require_once('Connection.php');
$cases=$conn->getAllCases();
$commands=$conn->getAllLocalCommands();
?>

<html>
<h3>Report a crime : <i>Complaint form</i></h3>
<!-- <small>Search police station to your nearest location</small> -->
<form action ="complain.php" method="post" enctype="multipart/form-data" target="_blank">
  <?php 
  if (isset($_SESSION["msg"])){
    echo $_SESSION["msg"];
  } else {
    $_SESSION["msg"] = "";
  } 
  echo"<br>Select crime <select name=\"crime\">";  
  
    // output data of each row
    while($row = $cases->fetch_assoc()) {
        echo "<option value={$row["case_types_id"]}>{$row["case_name"]}</option> ";
    }
        ?>
  </select>
 
  <br>
Address of crime:<input type="text" name="crimead" placeholder="115 Victoria Rd" required><br>
State case: <br> <textarea required  rows="10" cols="90" name="crimedesc">
The cat was playing in the garden.
</textarea>
<br>
Phone Number:<input type="tel" name="phone" required placeholder="+447 868 8686"><br>

Click to show evidence:
    <input type="file" name="evid" id="fileToUpload" multiple>
<br>
Your Full Name:<input required type="text" name="reporter_fn"><br>
Your Address:<input required type="text" name="reporter_addr"><br>
<input type="hidden" name="ip" value="<?php echo $_SERVER['REMOTE_ADDR']?>">
<input type="hidden" name="mac" value="<?php echo exec('getmac')?>">
<input type="hidden" name="location" value="<?php echo "Aberdeen"?>">
<input type="hidden" name="browser" value="<?php echo $_SERVER['HTTP_USER_AGENT']?>">
<input type="hidden" name="model" value="<?php echo $_SERVER['HTTP_USER_AGENT']?>">
<input type="submit" value="Submit Complaint" name="submit">
</form>
</html>
