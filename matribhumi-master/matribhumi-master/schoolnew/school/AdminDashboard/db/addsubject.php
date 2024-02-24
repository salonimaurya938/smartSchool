<?php 

include 'conn.php';

$subName=$_POST['subName'];
$subStatus=$_POST['subStatus'];

$sql="INSERT INTO `subject`(`id`, `subName`, `subStatus`) VALUES ('','$subName','$subStatus')";
$query=mysqli_query($conn,$sql);
if($query)
{
  echo "data inserted";
}else{
  echo "data is not inserted";
}
?>

<?php
include 'config.php';

if(isset($_POST['submit']))
{
$subName=$_POST['subName'];
$subStatus=$_POST['subStatus'];
$name=mysqli_real_escape_string($conn,$_POST['name']);
$pic=$_FILES['pic']['name'];
$subIcon="assets/images/category/$pic";
$string =$name;
$subcaturl = str_replace(' ', '-', $string);

if($pic!="" || $pic!=null)
{
$sql="INSERT INTO `subcategory`(`id`, `subName`, `subIcon`, `subStatus`) VALUES ('','$subName','$subIcon','$subStatus')";
if(mysqli_query($conn,$sql))
{
move_uploaded_file($_FILES['pic']['tmp_name'],"../../".$file);
header('location: ../sub-category.php');
}
}
else
{
$sql="INSERT INTO `subcategory`(`id`, `sub_cat_name`, `sub_cat_url`, `cat_id`, `status`) VALUES ('null','$name','$subcaturl','$category','$status')";
if(mysqli_query($conn,$sql))
{
header('location: ../sub-category.php');
}
}

}
?>