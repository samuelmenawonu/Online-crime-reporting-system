<?php
    include_once("../header.php");

 ?>
<?php //session_start(); 
  require_once('../models/Connection.php');
  require_once('../models/Local_Command.php');
  
 

if(isset($_POST['search'])){
    $query =  $_POST['command'];
    $localCom = $commands->getAllLocalCommandsById($query);
    if ($localCom != false){
    while($row = mysqli_fetch_assoc($localCom)){
     
        ?>
        
  
<div class="w3-main bg-dark" style="margin-left:300px;margin-top:43px; color: white;">
  <form action ="search.php" method="post" class="w3-container" style="padding-top:22px">

      <input type = "hidden" name="command_id" value=<?php echo $row['command_id'];?>> 
      Command Name:<input required type="text" name="command_name" class="form-control" value=<?php echo $row['command_name'];?> required><br>
      Command Division:<input required type="text" name="command_div" class="form-control" value=<?php echo $row['command_division'];?> required><br>
      Street:<input type="text" name="street" class="form-control" value=<?php echo $row['street'];?>  required><br>
      Town: <input type="text" name="town" class="form-control"class="form-control" value=<?php echo $row['town'];?> required><br>
      Postcode:<input type="text" name="postcode" class="form-control" required value=<?php echo $row['postcode'];?>><br>
      Choose the department<br>
    <?php 
      require_once('../models/Connection.php');
      
      $dept = $conn->getAllDepartments();
      while($rows = $dept->fetch_assoc()){
        $cd= $conn->getBySql("Select * from command_dept where department_id = ". $rows['department_id'] ." AND command_id = ". $row['command_id']   );
        $rown = mysqli_fetch_assoc($cd);
         ?>
    <input type="checkbox"  <?php if(($rows['department_id']== $rown['department_id'])){echo "checked";} ?> name="department_id[]" value=<?php echo $rows['department_id'];?>><?php echo $rows['name'];?><br>
    <?php
        
    }

    ?>
      <input type="submit" value="Update Local Command" name="localupdate" class="btn btn-secondary" style="margin-bottom:3rem">
     <input type="submit" value="Delete Local Command" name="localdelete" class="btn btn-secondary" style="margin-bottom:3rem">
  </form>
<?php
      include_once("../footer.php");
   ?>

      <?php  
    }
  }else{?>
    <div class="alert alert-warning alert-dismissible fade show" role="alert">
      <strong>Record not found!</strong> The record does not exist or has been deleted.
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
</div>
<?php
  }
}

if(isset($_POST['search2'])){
  //$option =  $_POST['option'];
  //$query =  $_POST['command'];
  $localCom = $commands->listCommands();
  ?>
  <div class="w3-main bg-dark" style="margin-left:300px;margin-top:43px; color: white; padding: 1px;">    
    <h5>Record of Police Bases</h5>
    
  <?php
  while($row = mysqli_fetch_assoc($localCom)){
   
      ?>
<table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
    <tr>
        <td class="text-left"><?php echo $row['command_id']?></td>
        <td class="text-center"><?php echo $row['command_name']?></td>
        <td class="text-justify"><?php echo $row['command_division']?></td>
        <td class="text-justify"><?php echo $row['street']?></td>
        <td class="text-right"><?php echo $row['town']?></td>
        <td class="text-right"><?php echo $row['postcode']?></td>
    </tr>
</table ; >
    <?php  
  }
}
?>