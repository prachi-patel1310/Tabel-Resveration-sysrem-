<?php
  session_start();
  $res_id = $_GET['res_id'];
  $reservation_name = $_GET['reservation_name'];
  $reservation_phone = $_GET['reservation_phone'];
  $reservation_date = $_GET['reservation_date'];
  $reservation_time = $_GET['reservation_time'];

  $table = $_POST["table"];
  $chair = $_POST["chair"];

  $_SESSION['res_id']=$res_id;
  $_SESSION['reservation_name']=$reservation_name;
  $_SESSION['reservation_phone']=$reservation_phone;
  $_SESSION['reservation_date']=$reservation_date;
  $_SESSION['reservation_time']=$reservation_time;
  $_SESSION['table']=$table;
  $_SESSION['chair']=$chair;
  header('Location:pay.php');
?>