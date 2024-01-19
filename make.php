<?php
    session_start();

    $host = "localhost";
    $dbusernamer = "root";
    $dbpassword = "penis";
    $dbname = "hashing";

    $mysqli = new mysqli($host, $dbusernamer, $dbpassword, $dbname);

    $naam = $_POST["name"];
    $email = $_POST["email"];
    $wachtwoordIn = $_POST["password"];
    $saltIn = $_POST["password"];
    $wachtwoordR = $_POST["password_repeat"];
    if($wachtwoordIn == $wachtwoordR){
        $wachtwoord = password_hash($wachtwoordIn . "oelimoeli", PASSWORD_DEFAULT);
        $salt = password_hash($saltIn, PASSWORD_DEFAULT);
        $qry = "INSERT INTO gebruiker_uitgebreid (naam, email, hash_wachtwoord, salting) VALUES(?,?,?,?);";
        $mysqli_stmt = $mysqli->prepare($qry); // Voorbereiden van de query
        $mysqli_stmt->bind_param("ssss", $naam, $email, $wachtwoord, $salt);
        $mysqli_stmt->execute();
        $_SESSION["loggedin"] = true;
        header("location:loggedIn.php");
    } else  {
        header("location: index.php");
    }
?>  