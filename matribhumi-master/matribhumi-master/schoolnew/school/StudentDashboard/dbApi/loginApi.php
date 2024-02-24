<?php
$conn=mysqli_connect('localhost','root','','student') or die('Error Occured');
$emailMob = $_POST['emailmob'];
$password = $_POST['password'];
if(preg_match('/^[0-9]{10}+$/', $emailMob)) {
    $sql = "SELECT * FROM `student_login` where `mob`='$emailMob' and `password`='$password'";
  }    
  elseif(preg_match('/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/', $emailMob)) {
    $sql = "SELECT * FROM `student_login` where `email`='$emailMob' and `password`='$password'";
  } else{
    $data['code'] = 202;
    $data['msg'] = 'Invalid Credential!';
    echo json_encode($data);
  }    
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
