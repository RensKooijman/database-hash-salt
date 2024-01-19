<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>registreren</title>
</head>
<body>
    <form action="./make.php" method="post">
        <input name="name" placeholder="name" type="text" required>
        <input name="email" placeholder="email" type="text" required>
        <input name="password" placeholder="password" type="text" required>
        <input type="text" name="password_repeat" placeholder="repeat password" required>
        <button>register</button>
    </form>
    <a href="./index.php">login</a>
</body>
</html>