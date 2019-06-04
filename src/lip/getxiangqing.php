<?php
 include("lianjie.php");

 $id=$_REQUEST['id'];

 $sql="select * from product where id = $id";
 $rel=$mysqli->query($sql);
 $row = $rel->fetch_assoc();
 $json = json_encode($row);
 echo $json;
 $mysqli->close();
?>