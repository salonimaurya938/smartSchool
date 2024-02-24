<?php

include 'conn.php';

session_start();    

$username = $_POST['username'];
$password = $_POST['password'];

if($password && $username) {
    $sql = "SELECT * FROM `users` where `username`='$username' and `password`='$password'";
 $query=mysqli_query($conn,$sql);
 if(mysqli_num_rows($query)>0)
 {
 $row=mysqli_fetch_array($query);
echo $_SESSION['id']=$row['id'];
echo $_SESSION['username']=$row['username'];
//echo $_SESSION['mob']=$row['pmob'];
//echo $_SESSION['studentName']= $row['name'];
//echo $_SESSION['class']=$row['classes'];
//echo $_SESSION['dob']=$row['dob'];
//echo $_SESSION['blood_group']=$row['blood_group'];
//echo $_SESSION['weight']=$row['weight'];
//echo $_SESSION['height']=$row['height'];
// echo $_SESSION['address']=$row['address'];
// echo $_SESSION['username']=$row['userId'];
echo $_SESSION['password']=$row['password'];
// echo $_SESSION['fname']=$row['fname'];
// echo $_SESSION['mname']=$row['mname'];
// echo $_SESSION['gender']=$row['gender'];
// echo $_SESSION['rollNo']=$row['rollNo'];
// echo $_SESSION['registration']=$row['registrationNo'];
// echo $_SESSION['admissionNo']=$row['admissionNo'];
//echo "successfully";
echo "<script>alert('SuccessFully!');window.location.href='../studentdashBoard.php'</script>";
}else {
  echo "<script>alert('Username or Password Incorrect!');window.location.href='../../login.php'</script>";
}
}
else
{
  "Invalid Cadaintial!! ";
}
?>
