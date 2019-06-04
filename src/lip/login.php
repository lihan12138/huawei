<?php
include('lianjie.php');
    $username=$_REQUEST['username'];
    $password=$_REQUEST['password'];
    // $josn=json_encode("登陆成功");
    // $josn1=json_encode("登陆失败");
    $sql="select * from users where user_name='$username' and user_password='$password'";
    $rel=$mysqli->query($sql);
    if($rel->num_rows>0){
        echo "denglu";
    }else{
        echo "shibai";
    }
$mysqli->close();
?>