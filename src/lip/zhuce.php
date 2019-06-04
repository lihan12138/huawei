<?php
include('lianjie.php');
$username=$_REQUEST['username'];
//$password=$_REQUEST['password'];
//$email=$_REQUEST['email'];
$sql="select * from users where user_name='$username'";
$rel=$mysqli->query($sql);
if($rel->num_rows>0){
    die('shibai');
}else{echo "chenggong";};
$mysqli->close();
?>