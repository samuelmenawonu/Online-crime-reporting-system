<?php
    //session_start();
    if(isset($_SESSION['pdelete'])){
              echo $_SESSION['pdelete'];
              $_SESSION['pupdate'] = " ";
              session_unset();
            }
    elseif(isset($_SESSION['pupdate'])){
              $_SESSION['pddelete'] = "";
              echo $_SESSION['pupdate'] ;
              session_unset();
            }
    else{
              $_SESSION['pdelete'] = "";
              $_SESSION['pupdate'] = "";
            }
  ?>
  <?php
    include_once("../header.php");
 ?>
  <div class="w3-main" style="margin-left:300px;margin-top:43px;">
<form action="police_search.php" method="post"  class="w3-container" style="padding-top:22px">
  <small>Search by Id </small>
	<input type="text" name="police_id"  class="form-control" >
	<input type="submit" name="police_search" value="Search" class="btn btn-secondary" style="margin-top:1rem">
  <input type="submit" name="police_search2" value="Search All Police info" class="btn btn-secondary" style="margin-top:1rem">
</form>

<?php
require_once('../models/Connection.php');
require_once('../models/Police.php');
$dept=$conn->getAllDepartments();
$com=$conn->getAllLocalCommands();
?>
<br /><br />

<?php
  if (isset($_SESSION["police"])== true){
    echo "<p>" . $_SESSION["police"]. "</p>";
  } else {
    $_SESSION["police"] = "";

  } 

?>
<form action ="police_add.php" method="post"  class="w3-container" style="padding-top:22px">
  Police Name:<input required type="text" name="name"    class="form-control" placeholder="John SOn" required><br>
  <?php
  echo"<br>Select police department<select name=\"department_id\">";  
    echo"<option value=0>Not Assigned</option>";
    // output data of each row
    while($row = $dept->fetch_assoc()) {
      
      echo "<option value={$row["department_id"]}>{$row["name"]}</option> ";
  }
      ?>
</select>
<br><br>
<?php
  echo"<br>Select police command<select name=\"police_command_id\">";  
  
    // output data of each row
    while($row = $com->fetch_assoc()) {
      echo "<option value={$row["command_id"]}>{$row["street"]}</option> ";
  }
      ?>
</select>
<br><br>
Role <select name="role">
<option name="Sgt">Sgt </option>
<option name = "DPO"> Division Police Oficer </option>
<option name="AIG"> Assistant Inspector General </option>
<option name="IG"> Inspector General </option>
</select>
<br><br>
  <input type="submit" value="Add Police" name="policead" class="btn btn-secondary" style="margin-top:1rem">
</form>

<?php
  require_once('../models/Connection.php');
  require_once('../models/Police.php');
  if (isset($_POST["policead"])){

  $localCom = $police->create($_POST);
  $conn->query($localCom);
  $_SESSION["police"] = 
"<div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">
          <strong>Police  created!</strong> You should check in on some of those fields below.
          <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">
            <span aria-hidden=\"true\">&times;</span>
          </button>
        </div>";
  header("Location: police_add.php");
}

?>