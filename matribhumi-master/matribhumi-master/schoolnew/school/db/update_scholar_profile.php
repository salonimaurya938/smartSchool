<?php
include 'conn.php';

if(isset($_POST['submit']))
{
// create function for generate random password
function generate_password($len = 8){
  $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  $password = substr( str_shuffle( $chars ), 0, $len );
  return $password;
 }

$stdName=$_POST['stdName'];
$email=$_POST['email'];
$mob=$_POST['mob'];
$password = generate_password();
$username="scholar".$_POST['stdName'];
$class=$_POST['class'];
$city=$_POST['city'];
$address=$_POST['address'];
$state=$_POST['state'];
$country=$_POST['country'];
$pincode=$_POST['pincode'];

$pic=$_FILES['pic']['name'];
$file="scholar_panel/user_assets/img/profile/$pic";

date_default_timezone_set('Asia/Kolkata');
$currentTime = date('d-m-Y H:i A',time());


if($pic!="" || $pic!=null)
{
$ext_pic = pathinfo($pic, PATHINFO_EXTENSION);
if ($ext_pic=='jpeg' || $ext_pic=='png' || $ext_pic=='jpg') 
{
    //update SQl............
  //$sql="INSERT INTO `scholar_register`(`id`, `stdname`, `mob`, `email`, `username`, `password`, `class`, `ceated`, `std_profile`, `address`, `pincode`, `city`, `state`, `country`) VALUES ('','$stdName','$mob','$email','$username','$password','$class','$currentTime','$pic','$address','$pincode','$city','$state','$country')";

if(mysqli_query($conn,$sql))
{
move_uploaded_file($_FILES["pic"]["tmp_name"],"../../".$file); 
echo "<script>alert('Successfully Register!!!');window.location.href='../scholarshipslogin.php'</script>";
}
}
else
{
  //echo "data is not inserted";
 echo "<script>alert('Please upload file having extensions jpeg/jpg/png only.');window.location.href='../scholarships.php'</script>";
}
}


}

?>