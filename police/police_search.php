<?php
    include_once("../header.php");

 ?>
<?php //session_start(); 
 require_once('../models/Connection.php');
 require_once('../models/Police.php');
 $dept=$conn->getAllDepartments();
 $com=$conn->getAllLocalCommands();
  
 

if(isset($_POST['police_search'])){
    $query =  $_POST["police_id"];
    $localCom = $conn->getAllPoliceById($query);
    if ($localCom != false){
    while($row = mysqli_fetch_assoc($localCom)){
     
        ?>
        
<form action ="police_search2.php" method="post">
    <input type="submit" value="Update Department" name="policeupdate">
    <input type="submit" value="Delete Department" name="policedelete">
    <br /><br />
    <input type = "hidden" name="police_id" value=<?php echo $row['police_id'];?>> 
    Police Name:<input  type="text" value=<?php echo $row['Name'];?> name="name" placeholder="John SOn" required><br>
  <?php
  echo"<br>Select police department<select name=\"department_id\">";  
    // output data of each row
    while($rows = $dept->fetch_assoc()) {
    
      echo "<option" ;
      if(($rows['department_id']== $row['department_id']))
      {echo " selected";} 
      echo " value={$rows["department_id"]}>{$rows["name"]}";  
      echo"</option> ";
  }
      ?>
</select>
        <br><br>
        <?php
          echo"<br>Select police command<select name=\"police_command_id\">";  
          
            // output data of each row
            while($rown = $com->fetch_assoc()) {
              echo "<option ";
              if(($rown['command_id']== $row['police_command_id']))
              {echo " selected";} 
              echo " value={$rown["command_id"]}>{$rown["street"]}</option> ";
          }
              ?>
        </select>
    <br><br>

</form>
<?php
      include_once("../footer.php");
   ?>

      <?php  
    }
  }
}

if(isset($_POST['police_search2'])){
  //$option =  $_POST['option'];
  //$query =  $_POST['command'];
  $localCom = $conn->getAllPolice();?>
    <div class="w3-main bg-dark" style="margin-left:300px;margin-top:43px; color: white; padding: 1px;">    
    <h5>Record of Police Officers</h5>
    <?php
  while($row =$localCom->fetch_assoc()){
   
      ?>
      
<table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
    <tr>
      <thead>
      <td>Police id</td>
      <td>Police name </td>
      <td> Police role </td>
      <td> Police department </td>
      <td> Police base </td>
      </thead>
        <td><?php echo $row['police_id']?></td>
        <td><?php echo $row['Name']?></td>
        <td><?php echo $row['role']?></td>
        <td><?php
        $cases=$conn->getBySql("SELECT * FROM police_department WHERE department_id = {$row['department_id']}");
    while($rows = $cases->fetch_assoc()) {
      echo $rows['name'];
    
  }
      ?>
        </td>
        <td><?php
        $comm=$conn->getBySql("SELECT * FROM police_command_areas WHERE command_id = {$row['police_command_id']}");
    while($rows = $comm->fetch_assoc()) {
      echo $rows['street'];
    
  }
      ?>
        </td>
    </tr>
</table>
    <?php  
  }
}
?>