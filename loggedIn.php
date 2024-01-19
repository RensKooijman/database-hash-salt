<?php 
    session_start();
    if($_SESSION['loggedin'] != true){
        header('Location:index.php');
    }
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>home</title>
</head>
<body>
    <h1>Your logged in</h1>
    <a href="./index.php">logout</a>
    <?php
        echo  '<p>' . $_SESSION['data']['naam'] . '</p>';
        echo  '<p>' . $_SESSION['data']['email'] . '</p>'
    ?>
</body>
</html>