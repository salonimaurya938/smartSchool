<?php
include 'config.php';

if(isset($_POST['submit']))
{
$title=mysqli_real_escape_string($conn,$_POST['title']);
$desc=mysqli_real_escape_string($conn,$_POST['desc']);
$status=$_POST['status'];
$pic=$_FILES['pic']['name'];
$file="assets/img/slider/$pic";


$ext_pic= pathinfo($pic, PATHINFO_EXTENSION);
if ($ext_pic == 'jpeg' || $ext_pic == 'png' || $ext_pic == 'jpg') 
{ 
$sql="INSERT INTO `slider`(`id`, `banner`, `title`, `text`, `status`) VALUES (null,'$file','$title','$desc','$status')";
if(mysqli_query($conn,$sql))
{
move_uploaded_file($_FILES['pic']['tmp_name'],"../../".$file);
header('location: ../slider.php');
}
}
else
{
 echo "<script>alert('Please upload file having extensions jpeg/jpg/png only.');window.location.href='../slider.php'</script>";
}

}
?>