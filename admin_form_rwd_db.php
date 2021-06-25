<meta charset="utf-8">
<?php
include('condb.php');
	$a_id  = $_POST["a_id"];
	$a_pass1  = $_POST["a_pass1"];
	$a_pass2  = $_POST["a_pass2"];

	if($a_pass1 != $a_pass2){
		echo "<script type='text/javascript'>";
		echo "alert('รหัสผ่านไม่ตรงกัน กรุณาใส่รหัสผ่านใหม่อีกครั้ง ');";
		echo "window.location = 'admin.php'; ";
		echo "</script>";
	}else{
	$sql = "UPDATE tbl_admin SET 
	a_pass ='$a_pass1'
	WHERE a_id=$a_id
	 ";
	$result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error($LINK));
	}
	mysqli_close($con);
	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('แก้ไขรหัสผ่านสำเร็จ');";
	echo "window.location = 'admin.php'; ";
	echo "</script>";
	}else{
	echo "<script type='text/javascript'>";
	echo "window.location = 'admin.php'; ";
	echo "</script>";
}
?>