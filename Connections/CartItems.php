<?php
$servername = "localhost";
$username = "rittesh";
$password = "";
$dbname="vilgax";

    
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }
    $sql = "SELECT * from cart";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['product_name'] . "</td>";
            echo "<td>" . $row['price'] . "</td>";
            echo "<td ><button class=\"submit-button\" type=\"submit\" value=\"button\" onclick=\"removeFromCart('". $row['product_name'] ."')\">
            Remove</button></td>";
            echo "</tr>";
        }
    }
    $conn->close();
?>