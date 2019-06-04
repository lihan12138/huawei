<?php
include('lianjie.php');
$username=$_REQUEST['username'];
$password=$_REQUEST['password'];
$email=$_REQUEST['email'];
$insertSql = "insert into users(user_name,user_password,user_email)values('$username','$password','$email')";
$r=$mysqli->query($insertSql);
if($r){
  echo '成功';
}
$mysqli->close();
?>