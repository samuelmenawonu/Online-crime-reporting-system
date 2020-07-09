<?php

/**
 * 
 */
class LocalCommand extends Connection
{
	
	public function __construct(argument)
	{
		parent::__construct();
	}

   public function escape($value)
   {
      return parent::escape_value($value);
   }


	public function listCommands()
   {
      parent::getAllLocalCommands();
   }

   public function listById(){
      
   }

	public function create($report)
   {
      $sql  = "INSERT INTO police_command_areas (";
      $sql .="command_name, command_division, street, town, postcode";
      $sql .= ") VALUES ('";
      $sql .= $this->escape($report["command_name"]) . "', '";
      $sql .= $this->escape($report["command_div"]) . "', '";
      $sql .= $this->escape($report["street"]) . "', '";
      $sql .= $this->escape($report["town"]) . "', '";
      $sql .= $this->escape($report["postcode"]) . "') ";
      return $sql;
   }
   public function update($id, $command)
   {
      $sql  = "UPDATE police_command_areas";
      $sql .= "SET ";
      $sql .= "command_name={$command["command_name"]},";
      $sql .= "command_division ={$command["command_div"]},";
      $sql .= "street`={$command["street"]},";
      $sql .= "town = {$command["town"]},"
      $sql .= "postcode`=[value-6]";
      $sql .= " WHERE " . $this->escape($id);
      return true;
   }


   public function delete($id)
   {
      $sql ="DELETE FROM police_command_areas WHERE id = " . $this->escape($id);
      return true;
   }
}
$commands = new LocalCommand;
?>