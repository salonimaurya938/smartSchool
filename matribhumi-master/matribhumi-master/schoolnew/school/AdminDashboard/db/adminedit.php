<?php
include 'conn.php';
$id=$_POST['id'];
$username=$_POST['username'];
$email=$_POST['email'];
//echo "Saloni  ";
$sql="UPDATE `admin_login` SET `id`='$id',`username`='$username',`email`='$email' WHERE `id`='$id'";
$query=mysqli_query($conn,$sql);
if($query)
{

    echo "<script>alert('');
    window.location.href='../adminProfile.php'</script>";
}else{
    $error_msg='Not updated';
}
?>