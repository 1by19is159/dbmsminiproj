<?php
include"./connectxyz.php";
if($_SERVER["REQUEST_METHOD"]=="POST")
{

$date=$_POST['date'];	
$name=$_POST['name'];
$phnumber=$_POST['phnumber'];	
$address=$_POST['address'];
$pincode=$_POST['pincode'];
$courierweight=$_POST['courierweight'];
$couriertype=$_POST['couriertype'];
$amount=$_POST['amount'];
$rname=$_POST['rname'];
$rphnumber=$_POST['rphnumber'];
$address2=$_POST['address2'];

$query="INSERT INTO courierdetails(`date`,`name`,`phnumber`,`address`,`pincode`,`courierweight`,`couriertype`,`amount`,`rname`,`rphnumber`,`address2`)VALUES('$date','$name','$phnumber','$address','$pincode','$courierweight','$couriertype','$amount','$rname','$rphnumber','$address2')";
$query_exec=mysqli_query($connection,$query);
echo"  your data is stored";
}
else
	echo"your data not stored";
?>