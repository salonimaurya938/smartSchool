<?php

include 'conn.php';
session_start();
//echo "saloni";    
$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT * FROM `scholar_register` where `username`='$username' and `password`='$password'";
$query=mysqli_query($conn,$sql);
echo $sql;
if(mysqli_num_rows($query)>0)
{
    $row=mysqli_fetch_assoc($query);
    echo $_SESSION['id']=$row['id'];
    echo $_SESSION['username']=$row['username'];
    echo $_SESSION['stdname']= $row['stdname'];
    echo $_SESSION['email']=$row['email'];
    echo $_SESSION['mob']=$row['mob'];
    echo $_SESSION['city']=$row['city'];
    echo $_SESSION['class']= $row['class'];   
    echo "<script>window.location.href='../scholar_panel/scholarDashboard.php'</script>";
  // echo "Successfully!!!";
}
else
{
    //echo "not redirect!!!";
  echo "<script>alert('Username or  Password Incorrect!');window.location.href='scholarlogin.html'</script>";
}
?>