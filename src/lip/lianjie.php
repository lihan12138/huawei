<?php
 header("content-type:text/html;charset=utf-8");
 //连接数据库
 $li=array(
     'host'=>'localhost:3306',
     'user'=>'root',
     'password'=>'',
     'db'=>'h5-1903'
 );
 $mysqli=@new mysqli($li['host'],$li['user'],$li['password']);
 if($mysqli->connect_errno){
     die('连接错误'.$mysqli->connect_errno);
 }
 $mysqli->query("set names 'utf8';");
 $select_db=$mysqli->select_db($li['db']);
 if(!$select_db){
     die('连接错误'.$mysqli->error);
 }
?>