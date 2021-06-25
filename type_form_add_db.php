<?php
include('condb.php');

$type_name = $_POST['type_name'];
$type_hot = $_POST['type_hot'];
$type_cool = $_POST['type_cool'];

    $sql = "INSERT INTO tbl_type(type_name,type_hot,type_cool)
    
    VALUES 

    ('$type_name','$type_hot','$type_cool')";
    
    $result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error($LINK));
    mysqli_close($con);
    
    if($result){
      echo "<script>";
      echo "alert('เพิ่มสำเร็จ');";
      echo "window.location ='type.php'; ";
      echo "</script>";
    } else {
      
      echo "<script>";
      echo "alert('ERROR!');";
      echo "window.location ='type.php'; ";
      echo "</script>";
    }
?>