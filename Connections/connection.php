<?php
$servername = "localhost";
$username = "rittesh";
$password = "";
$dbname="vilgax";

    
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }
    $sql = "SELECT * from offers";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['phone'] . "</td>";
            echo "<td>" . $row['discount'] . "</td>";
            echo "<td>" . $row['mrp'] . "</td>";
            echo "<td>" . $row['offer_price'] . "</td>";
            echo "</tr>";
        }
    }
    $conn->close();
?>