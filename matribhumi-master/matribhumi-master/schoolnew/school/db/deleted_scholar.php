<?php

#step1 : make connection

include __DIR__.'/conn.php';
#step2 : prepare the Query

$id = $_GET['id'];
$sql = "Delete from record where id = '{$id}';";

#step3 : Execute the Query or Fire the Query

if(mysqli_query($conn,$sql)){
	if(mysqli_affected_rows($conn)>0){
		echo 'Record Deleted Successfully';
	}else{
		echo 'Cannot Delete Either Record Does not exist or ID is Wrong';
	}
}else{
	echo 'Records Not Deleted '.mysqli_error($conn);
}
