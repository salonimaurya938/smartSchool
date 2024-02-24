<?php
include 'conn.php';
$id=$_POST['id'];
$studentName=$_POST['studentName'];
$email=$_POST['email'];
$mob=$_POST['mob'];
$dob=$_POST['dob'];
$bloodGroup=$_POST['bloodGroup'];
$weight=$_POST['weight'];
$height=$_POST['height'];
$homeAddress=$_POST['homeAddress'];
//echo "Saloni  ";
$sql="UPDATE `student_login` SET `id`='$id',`studentName`='$studentName',`email`='$email',`mob`='$mob',
`dob`='$dob',`bloodGroup`='$bloodGroup',`weight`='$weight',`height`='$height',`homeAddress`='$homeAddress' WHERE `id`='$id'";
//echo $sql;
$query=mysqli_query($conn,$sql);
if($query)
{
  echo "<script>window.location.href='../studentProfile.php'</script>";
}else{
  $error_msg='Not updated';
}
?>