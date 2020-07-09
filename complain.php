<?php
session_start();
require_once('Connection.php');
require_once('Reporter.php');
require_once('Photo.php');

$_SESSION["msg"] = "Complaint successfully sent"; 

//if submit button is clicked
if (isset($_POST["submit"]) && !empty($_FILES['evid']['name'])){
   /*
   no restriction on file size
   reaad exif data
   */    

   $photo->attach_file();

      if ($photo->exists()) {

            $_SESSION["msg"] = "Sorry, file already exists. Upload another file or change the name of the file";
            header("Location: form.php");

         }


        if(in_array($photo->fileType, $photo->ext)){

           if (move_uploaded_file($photo->temp, $photo->get_file())){


               $_SESSION["msg"] = "Data saved and File uploaded successfully";
               header("Location: form.php");

               //saving form data into database 
               $crime =$report->create($_POST);
                 $conn->query($crime);
                   $crime_id= $conn->getLastId();

            }
            else{

               $_SESSION["msg"] = "Corrupt file, File failed to Upload";
               header("Location: form.php");

            }
      }
      else{

           $_SESSION["msg"] = "Invalid format, File types of " . implode(", ", $photo->ext) . " are supported";
            header("Location: form.php");

      }
         
      
   }
   elseif(isset($_POST["submit"]) && empty($_FILES['evid']['name'])){
        //saving form data into database 
        $crime =$report->create($_POST);
         $conn->query($crime);
         $_SESSION["msg"] = "Data saved";
        header("Location: form.php");

   }
   

?>