<?php
$conn=mysqli_connect('localhost','root','','student') or die('Error Occured');

//$id=$_GET['id'];

$studentName = $_POST['studentName'];
$email = $_POST['email'];
$mob = $_POST['mob'];
$password = $_POST['password'];
date_default_timezone_set('Asia/Kolkata');
$currentTime = date('d-m-Y H:i A',time());
$datas='';

$sql1="SELECT * FROM `student_login` WHERE `email`='$email' and `mob`='$mob'";
$result=mysqli_query($conn,$sql1);
if(mysqli_num_rows($result)>0){
echo "your are Already Registred!";
}else{
$sql="INSERT INTO `student_login`(`id`, `classId`, `parentId`, `password`, `studentName`, `email`, `mob`, `class`, `medium`, `rollNo`, `dob`, `bloodGroup`, `homeAddress`, `weight`, `height`, `current_date`) VALUES ('','$datas','$datas','$password','$studentName','$email','$mob','$datas','$datas','$datas','$datas','$datas','$datas','$datas','$datas','$currentTime')";
$query=mysqli_query($conn,$sql);
if($query)
{
$data['msg']="Registration Successfull!";
 echo json_encode($data);
}else{
 $data['code'] = 202;
 $data['msg'] = "Invalid Credential!";
 echo json_encode($data);
}
}
?>
