<?php
include 'conn.php';

session_start();

$chap_name=$_POST['chap_name'];
$chap_description=$_POST['chap_description'];
$w_chapter=$_POST['w_chapter'];
$subject_id=$_POST['subject_id'];

$sql="INSERT INTO `chapter`(`id`, `chap_name`, `chap_description`, `w_chapter`, `subject_id`) VALUES (' ','$chap_name','$chap_description','$w_chapter','$subject_id');";
var_dump($sql);
$query=mysqli_query($conn, $sql);
echo "";
var_dump($query);
if($query)
{
     echo "data inserted";

}else{
    echo "data is not inserted";
}

?>