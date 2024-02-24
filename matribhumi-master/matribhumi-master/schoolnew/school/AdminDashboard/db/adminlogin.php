<?php

include 'conn.php';
session_start();
//echo "saloni";    
$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT * FROM `admin_login` where `username`='$username' and `password`='$password'";
echo $sql;
$query=mysqli_query($conn,$sql);

if(mysqli_num_rows($query)>0)
{
$row=mysqli_fetch_assoc($query);
$_SESSION['username']=$row['username'];
$_SESSION['name']= $row['name'];
$_SESSION['email']=$row['email'];
$_SESSION['mobile']=$row['mobile'];
$_SESSION['role']=$row['role'];
$_SESSION['id']=$row['id'];
echo "<script>window.location.href='../admindashBoard.php'</script>";
}
else
{
    echo "<script>alert('Username or  Password Incorrect!');window.location.href='../adminlogin.html'</script>";
}
?>