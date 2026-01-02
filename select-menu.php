<!-- select-menu.php -->
<?php 
session_start();
//if (isset($_POST['selectChair'])) {
  $status=$_REQUEST['payment_status'];
 //$payload_data_json=$_GET['data'];
//$payload_data = json_decode($payload_data_json, true);
  //$payload = json_decode($_REQUEST['payload']);
if($status=="Credit")
{
  header('location:index.php');

  //$res_id =$payload_data['res_id'];
  //$reservation_name = $payload_data['reservation_name'];
  //$reservation_phone = $payload_data['reservation_phone'];
  //$reservation_date = $payload_data['reservation_date'];
  //$reservation_time = $payload_data['reservation_time'];

  //$table = $payload_data['table'];
  //$chair = $payload_data['chair'];
}
else
{

   echo'<script> alert("Payment Failed.. You will get refund within 24 Hours..")</script>';
  
  echo '<script> window.location="index.php" </script>';

}

 ?>


<script type="text/javascript">
 
$(document).ready(function(){
  $('input[type="checkbox"]').click(function(){
      // alert($('.menu:checked').length);

     var btnconfirm = document.getElementById("confirm");
     var maxchecked = $('.menu:checked').length;
     // alert(maxchecked) 
      if (maxchecked > 0 ) {
         btnconfirm.style.display = "block";
      } else {
         btnconfirm.style.display = "none";
      } 


  });
});

 </script>