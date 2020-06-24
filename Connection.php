<?php
$username="root";
$password="";
$server="localhost";
 function __construct(){
    try {
        $conn = new PDO("mysql:host=$servername;dbname=myDB", $username, $password);
        // set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
    catch(PDOException $e)
        {
        echo "Connection failed: " . $e->getMessage();
        }
}

function get_all_cases(){
    $stmt = $pdo->prepare("SELECT * FROM case_types");
    $stmt->execute();
    return $stmt= fetchAll(PDO::FETCH_ASSOC);
}

?>