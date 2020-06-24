<?php
session_start();
require_once('Connection.php');
$_SESSION['token']= rand(1, 100000);
?>
<html>
<h3>Report a crime : <i>Complaint form</i></h3>
<small>Search police station to your nearest location</small>
<form action ="form.php" method="post" enctype="multipart/form-data">
Police station
  <input list="police station">
  <datalist id="police station">
    <option value="Queen Street, AB10 1ZA">
    <option value="20 Winhill Rd, AB11 7XH">
    <option value="115 Victoria Rd, AB11 9LX">
    <option value="Railway Station, Guild Street, AB9 2DQ">
    <option value="Nelson Street, B24 5EQ">
    <option value="230 Abbotswell Cres, AB12 3JD">
    <option value="Seaton Police Station PI E,AB22 8ZP">
    <option value="FairView Street, 7A Greenfern PI, AB16 6JR">
  </datalist>
Select crime <select name="crime">
  <option value="Murder">Murder</option>
  <option value="Arson">Arson</option>
  <option value="Robbery">Robbery</option>
  <option value="Rape">Rape</option>
  <option value="Child Abuse">Child Abuse</option>
</select>
  <br>
State case: <br> <textarea name="message" rows="10" cols="90">
The cat was playing in the garden.
</textarea>
<br>
Tel:<input type="tel" name="usrtel"><br>
Email:<input type="email" name="usremail"><br>

Click to show evidence:
    <input type="file" name="evidence" id="fileToUpload">
<br>
<input type="submit" value="Submit Complaint" name="submit">
</form>
<?php
//testing to see the form submits
if(isset($_POST['submit']))
{
    $ip= $_SERVER['REMOTE_ADDR'];
    $mac= exec('getmac');
    $token= $_SESSION['token'];
    $date =getdate();

    $date_now= $date['year'] ."/". $date['mon'] ."/". $date['mday'] ;
    $time_now= $date['hours'].":" . $date['minutes'] .":". $date['seconds'];
    if ($_POST['crime']){
    	echo $_POST['crime'];
    } else{
    	echo "";
    }
 }
?>
</html>