<?php
/**
 * 
 */
class PoliceDepartment extends Connection
{
	
	public function __construct(argument)
	{
		parent::__construct();
	}
   

   public function escape($value)
   {
      return parent::escape_value($value);
   }


   public function listDepartments()
   {
      parent::getAllDepartments()();
   }

	public function create($dept)
   {
      $sql  = "INSERT INTO police_department(";
      $sql .="name, police_command_id";
      $sql .= ") VALUES ('";
      $sql .= $this->escape($dept["dept_name"]) . "', '";
      $sql .= $this->escape($dept["command_id"]) . "') ";
      return $sql;
   }

   public function update($id, $command)
   {
      $sql  = "UPDATE police_command_areas";
      $sql .= "SET ";
      $sql .= "command_name={$dept["dept_name"]},"
      $sql .= "command_division ={$dept['']},`street`=[value-4],`town`=[value-5],`postcode`=[value-6] WHERE 1"
      $sql ="DELETE FROM police_command_areas WHERE id = "  . $this->escape($id);
      return true;
   }


   public function delete($id)
   {
      $sql ="DELETE FROM police_command_areas WHERE id = " . $this->escape($id);
      return true;
   }
}
$depts = new PoliceDepartment;
?>

