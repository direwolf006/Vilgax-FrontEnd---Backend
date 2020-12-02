<?php
  header('Content-Type: application/json');
    $servername = "localhost";
    $username = "rittesh";
    $password = "";
    $dbname="vilgax";

    
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    $sql = "DELETE FROM cart WHERE product_name='".$_POST['name']."';";
    $result = $conn->query($sql);

    if ($result === TRUE) {
        echo "Record deleted successfully";
      } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
      }
    $conn->close();
?>