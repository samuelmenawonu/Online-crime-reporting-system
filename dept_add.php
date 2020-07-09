<form action ="dept_add.php" method="post">
  Department Name:<input required type="text" name="dept_name" placeholder="Special Anti-Robbery Unit" required><br>
  <?php
  echo"<br>Select crime <select name=\"crime\">";  
  
    // output data of each row
    while($row = $depts->fetch_assoc()) {
        echo "<option value={$row["command_id"]}>{$row["command_name"]}</option> ";
    }
        ?>
  </select>
  <input type="submit" value="Add Department" name="deptad">
</form>