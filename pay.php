

<?php
session_start();

  $reservation_name = $_GET['reservation_name'];
  $reservation_phone = $_GET['reservation_phone'];
  $reservation_date = $_GET['reservation_date'];
  $reservation_time = $_GET['reservation_time'];

  $table = $_GET["table"];
  $chair = $_GET["chair"];

$ch = curl_init();
$payload_data=array('res_id'=>$res_id,
  'reservation_name' => $reservation_name,
  'reservation_phone' => $reservation_phone,
  'reservation_date' => $reservation_date,
  'reservation_time' => $reservation_time,
  'table' => $table,
  'chair' => $chair);
$payload_data_json = json_encode($payload_data);

curl_setopt($ch, CURLOPT_URL, 'https://test.instamojo.com/api/1.1/payment-requests/');
curl_setopt($ch, CURLOPT_HEADER, FALSE);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
curl_setopt($ch, CURLOPT_HTTPHEADER,
            array("X-Api-Key:test_5234c308bb37bd11dc8ce3ac8d8",
                  "X-Auth-Token:test_cae0e15a948fff8c86d1eeeb57a"));
$payload = array(
  'purpose' => 'Table Booking',
  'amount' => '500',
  'buyer_name' => $reservation_name ,
  'email'=>'hellysharma0910@gmail.com',
  'phone' => $reservation_phone,
  'redirect_url' => 'http://127.0.0.1/TableReservation/select-menu.php',
  'send_email' => 'True',
  'allow_repeated_payments' => 'False',
  'data'=>$payload_data_json

);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($payload));
$response = curl_exec($ch);
curl_close($ch); 
$response=json_decode($response);
//print_r($response);
//$_SESSION['res']=$response->payment_request->id;
header('location:'.$response->payment_request->longurl);

?>