<?php
session_start();

$host = "localhost";
$dbusernamer = "root";
$dbpassword = "root";
$dbname = "hashing";

$mysqli = new mysqli($host, $dbusernamer, $dbpassword, $dbname);

$gebruikersnaam = filter_input(INPUT_POST, 'name', FILTER_SANITIZE_SPECIAL_CHARS);
$email = filter_input(INPUT_POST, 'email');
$wachtwoord = filter_input(INPUT_POST, 'password');
$wachtwoordR = filter_input(INPUT_POST, 'password_repeat');
if($wachtwoord == $wachtwoordR){
    $sql = "SELECT * FROM gebruiker_uitgebreid WHERE naam = ? AND email = ?";
    $mysqli_stmt = $mysqli->prepare($sql);
    if ($mysqli_stmt->bind_param("ss", $gebruikersnaam, $email)) {
        $mysqli_stmt->execute();
        $result = $mysqli_stmt->get_result();
        $row = $result->fetch_assoc();
        if (password_verify($wachtwoord . "oelimoeli", $row['Hash_wachtwoord'])) {
            $_SESSION["loggedin"] = true;
            $_SESSION["data"] = ['naam' => $row["Naam"], 'email' => $row['Email']];
            header('Location:loggedIn.php');

        } else {
            $_SESSION["loggedin"] = false;
            header('Location:index.php');
        }
    }else {
        header("location: index.php");
    }
}else {
    header("location: index.php");
}

?>