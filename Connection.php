<?php


     /**public
     * 
     */
    class Connection
    {
        private $username="root";
        private $password="";
        private $server="localhost";
        protected $conn;
        public function __construct()
        {
            
            $this->open_connection();            
        }

        public function open_connection(){
            //creating connection to database
            $this->conn= new mysqli($this->server, $this->username, $this->password);
                 if($this->conn->connect_error){
                echo "Database Connection failed" . $this->conn->connect_error;
            }
           //selecting database
            $db=mysqli_select_db($this->conn, "crime");
            $this->is_not($db);
        }
        public function getAllCases(){     
            return $this->getBySql("SELECT * FROM case_types");
        }

        public function getAllLocalCommands(){     
            $commands = $this->getBySql("SELECT * FROM police_command_areas");
            if(mysqli_num_rows($commands) > 0) {
                return $commands;
            }
        }
        
        public function getAllDepartments(){     
            $depts = $this->getBySql("SELECT * FROM police_department");
            if (mysqli_num_rows($depts) > 0) {
                return $depts;
            }
        }

        public function getAllCrimeFiles(){     
            $crime_files = $this->getBySql("SELECT * FROM reporter_files");
            if (mysqli_num_rows($crime_files) > 0) {
                return $crime_files;
            }
        }

        public function getAllCrimeFilesById($id){     
            $crime_file = $this->getBySql(
                "SELECT * FROM reporter_files 
                WHERE crime_id = {$id}");
            if (mysqli_num_rows($crime_file) > 0) {
                return $crime_file;
            }
        }
        //function to get sql
        public function getBySql($sql=""){     
            $crime_file = $this->conn->query($sql);
            $this->is_not($crime_file);
            return $crime_file;
        }
        //checking if there records present in the database
        public function getNumOfRows($sql=""){     
            if(mysqli_num_rows($sql) > 0) {
                return $sql;
            }
        }
        //query function
        public function query($sql){
           $query= mysqli_query($this->conn, $sql);
           $this->is_not($query);
        }
        public function getLastId(){
           $id= $this->conn->insert_id;
           $this->is_not($id);
           return $id;
        }

        public function escape_value($value)
        {
          $value = mysqli_real_escape_string($this->conn, $value);
          return $value;
        }

        //if its doesn't satisfy the condition
        protected function is_not($connection){
            if(!$connection){
                die('Query failed '. $this->conn->error);
            } 
        }
    }
       
$conn = new Connection();
//return $conn;
   



?>