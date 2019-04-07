<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Student  Information</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<link href="hostel.css" rel="stylesheet" type="text/css">
</head>

<body>
<table width="100%" border="0">

<?php

$con =  mysqli_connect("localhost","root","","hostel");
if(!$con) {
die('failed to connect');
}
if(isset($_GET['name'])){

$dc=$_GET['name'];



$pro = "CREATE PROCEDURE `get_doc`( IN `dd` VARCHAR(15))
  BEGIN
  SELECT *FROM registration WHERE firstName=`dd`;
  END;
  ";
  if(mysqli_query($con,$pro))
  {
  echo "executed";
  }
  $call = "CALL `get_doc`('$dc')";
  
  $result = mysqli_query($con,$call);
  }
  if(mysqli_num_rows($result)>0){
  
  while($row = mysqli_fetch_assoc($result))
  {
  ?>
  <tr>
<td width="12%" valign="top" class="heading">Course: </td>
<td class="comb-value1"><?php echo $row['course'];?></td>
</tr>

<tr>
<td width="12%" valign="top" class="heading">Reg no: </td>
<td class="comb-value1"><?php echo $row['regno'];?></td>
</tr>

<tr>
<td width="12%" valign="top" class="heading">First Name: </td>
<td class="comb-value1"><?php echo $row['firstName'];?></td>
</tr>

<tr>
<td width="12%" valign="top" class="heading">Middle name: </td>
<td class="comb-value1"><?php echo $row['middleName'];?></td>
</tr>

<tr>
<td width="12%" valign="top" class="heading">Email: </td>
<td class="comb-value1"><?php echo $row['emailid'];?></td>
</tr>

<tr>
<td width="12%" valign="top" class="heading">Gender: </td>
<td class="comb-value1"><?php echo $row['gender'];?></td>
</tr>

  
  
  <?php
  }
  }
  ?>
  
 

 </table>
 </body>
</html>


