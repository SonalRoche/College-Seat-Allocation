<?php
  $dbhost = 'localhost' ;
  $username = 'root' ;
  $password = 'sql123' ;
  $db = "try1" ;
   $conn = mysqli_connect("$dbhost" , "$username" , "$password") ; //$conn was added 
       
   mysqli_select_db($conn , $db) ; //to select a database ... $conn was added
  
   
   
   //added
    $conn = new mysqli($dbhost,$username,$password,$db) ;
	
   $query=filter_input(INPUT_POST,'query1');
   echo $query , "<br>";
   
   $result = mysqli_query($conn,$query);//checking if the query is feasible
   //echo $result , "<br>";
   
   
   if(mysqli_connect_error())
	{ die('connect error('.mysqli_connect_errno().')' .mysqli_connect_error());
	}
	else
	{ 
        $i = 0; 
  echo '<html>
  <body>
  <table border=1>
  <tr>';  
  while ($i < mysqli_num_fields($result))  
  {   $meta = mysqli_fetch_field($result);  
 echo '<td>' . $meta->name . '</td>';  
 $i = $i + 1; 
 } 
 echo '</tr>';   
 $i = 0; 
 while ($row = mysqli_fetch_row($result))  
	 {   echo '<tr>'; 
 $count = count($row);  
 $y = 0;  
 while ($y < $count) 
	 {    $c_row = current($row); 
 echo '<td>' . $c_row . '</td>';  
 next($row);   
 $y = $y + 1;   
 }   
 echo '</tr>';  
 $i = $i + 1;  
 } 
 echo '</table></body></html>'; 
 
 mysqli_free_result($result); } 
 

?> 
