<?php
//session_start();
require_once('models/Connection.php');
$cases=$conn->getAllCases();
$commands=$conn->getAllLocalCommands();
?>

<form action ="complain.php" method="post" enctype="multipart/form-data" class="signup-form">
              <div class="form-header">
                <h2>Report a crime </h2>
                <h4><i>Complaint form</i></h4>
                <p>Accusantium doloremque laudantium totam rem aperiam eaque ipsa quae inventore veritatis dolor architecto.</p>
              </div>
              <div class="form-content">
  <?php 
  if (isset($_SESSION["msg"])){
    echo $_SESSION["msg"];
  } else {
    $_SESSION["msg"] = "";
  } 
  echo"<br>Click to Select crime <select name=\"crime\">";  
  
    // output data of each row
    while($row = $cases->fetch_assoc()) {
        echo "<option value={$row["case_types_id"]}>{$row["case_name"]}</option> ";
    }
        ?>
  </select>
 
  <br><br>
                <small>Click to text boxes enter details </small>
                <p>Reporter's name:<input required type="text" name="reporter_fn" placeholder="Full name"></p>
                <p>Reporter's address:<input required type="text" name="reporter_addr" placeholder="Your address"></p>
                <p>Reporter's street:<input required type="text" name="reporter_str" placeholder="Your address"></p>
                <p>Reporter's town:<input required type="text" name="reporter_twn" placeholder="Your address"></p>
                <p>Phone Number:<input type="tel" name="phone" required placeholder="+447 868 8686"></p>
                <p>Address of crime:<input required type="text" name="crimead" placeholder="Address of crime"></p>
                <p>Street of crime<input required type="text" name="crimestr" placeholder="Street of crime"></p>
                <!-- <p><input  type="hidden" name="crimetwn" value="Aberdeen"></p> -->
                
State case: <br> <textarea required  rows="10" cols="31" name="crimedesc" placeholder="I want to report a ." >

</textarea>
<br>


Click to show evidence:
    <input type="file" name="evid" id="fileToUpload" >
<br>
<input type="hidden" name="ip" value="<?php echo $_SERVER['REMOTE_ADDR']?>">
<input type="hidden" name="mac" value="<?php echo exec('getmac')?>">
<input type="hidden" name="location" value="<?php echo "Aberdeen"?>">
<input type="hidden" name="browser" value="<?php echo $_SERVER['HTTP_USER_AGENT']?>">
<input type="hidden" name="model" value="<?php echo $_SERVER['HTTP_USER_AGENT']?>">
<input type="submit" value="Submit Complaint" name="submit">
</form>
</html>
