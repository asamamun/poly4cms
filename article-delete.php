<?php
require "inc/adminauth.php";
require "inc/connection.php";
if(isset($_GET['id'])){
    $id = $_GET['id'];
    $q = "update articles set active='0',deleted_at=CURRENT_TIMESTAMP where id='$id' limit 1";
    $conn->query($q);
    if($conn->affected_rows){
        header("location:article-all.php");
    }
}