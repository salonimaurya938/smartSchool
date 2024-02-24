<?php
$conn=mysqli_connect('localhost','root','','admin') or die('Error Occured');
$username = $_POST['username'];
$password = $_POST['password'];
$sql = "SELECT * FROM `admin_login` where `username`='$username' and `password`='$password'";
$query=mysqli_query($conn,$sql);
if(mysqli_num_rows($query)>0)
{
$row=mysqli_fetch_assoc($query);

if($row){
 $data= $row;
 echo json_encode($data);
}else{
 $data['code'] = 202;
 $data['msg'] = 'Invalid Credential!';
 echo json_encode($data);
}
}
else
{
 $data['code'] = 202;
 $data['msg'] = 'Invalid Credential!';
 echo json_encode($data);
}

?>
