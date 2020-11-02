<?php
  header('Content-Type: application/json');
    $servername = "localhost";
    $username = "rittesh";
    $password = "ChangeMe$123";
    $dbname="vilgax";

    
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    $sql = "INSERT INTO cart (product_name,price) VALUES ('".$_POST['name']."','".$_POST['price']."');";
    $result = $conn->query($sql);

    if ($result === TRUE) {
        echo "New record created successfully";
      } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
      }
    $conn->close();
?>