<?php
require_once('../models/Connection.php');
$commands=$conn->getAllLocalCommands();

    include_once("../header.php");
 ?>
 <div class="w3-main bg-dark" style="margin-left:300px;margin-top:43px; color: white;">
  <form action="comdept_search.php" method="post" class="w3-container" style="padding-top:22px">
    <small>Search by Street </smal>
  	<input type="search" name="command"  class="form-control" >
  	<input type="submit" name="search" value="Search" class="btn btn-secondary" style="margin-top:1rem">
  </form>
  Click to view crimes assigned to each department
<table class="table table-striped">
  <tr>
      <thead>
        <td>Command id</td>
        <td>Command name</td>
        <td>Command division</td>
        <td>Street</td>
        <td>Postcode</td>
        <td>Department(s)</td>
      </thead>
    </tr>
  		<?php
  		$comdepts=$conn->getBySql("SELECT * FROM police_command_areas LEFT JOIN command_dept ON police_command_areas.command_id = command_dept.command_id LEFT JOIN police_department ON command_dept.department_id=police_department.department_id");

	while ($rows = $comdepts->fetch_array()) { ?>

  	
  		
  		<tr>
  		<td><?php echo($rows[0])?></td>
  		<td><?php echo( $rows[1]);?></td>
  		<td><?php echo( $rows[2]);?></td>
  		<td><?php echo( $rows[3]);?></td>
  		<td><?php echo( $rows[4]);?></td>
  		<td><?php echo("<a href=command_dept2.php?id={$rows[9]}>" . $rows[10]). "</a>";?></td>
  	</tr> <?php
}
  