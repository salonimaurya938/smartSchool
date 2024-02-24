<?php
include 'conn.php';

$id=$_POST['id'];
//$oldpassword=$_POST['password'];
$newpassword=$_POST['newpassword'];
$reNewpassword=$_POST['renewpassword'];
if($newpassword===$reNewpassword){
    $sql = "UPDATE `admin_login` SET `password`='$newpassword' WHERE `id`='$id'";
    var_dump($sql);
    $query=mysqli_query($conn,$sql);
    if($query){
        //echo "password changed";
        echo "<script>window.location.href='../adminProfile.php'</script>";
    }else{
        echo "Not match password";
    }
}else
echo "error";
?>