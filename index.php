<?php 
    session_start();
    session_destroy();
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>inloggeen</title>
</head>
<body>
    <form action="./action.php" method="post">
        <input name="name" placeholder="name" type="text" required>
        <input name="email" placeholder="email" type="text" required> 
        <input name="password" placeholder="password" type="text" required>
        <input type="text" name="password_repeat" placeholder="repeat_password" required>
        <button>login</button>
    </form>
    <a href="./registreren.php">register</a>
</body>
</html>