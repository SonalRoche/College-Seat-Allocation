<?php

  include "..\php\connection.php" ;
  //echo "hello";
    $query = "select * from college;";
	$result = mysqli_query($conn,$query);
	
	
	
	//$query= $_GET['Query']; 

  echo $query;
  //$mysqli = new mysqli("localhost", "root", "root123", "comp701");
  
  //$result = $mysqli->query($query); 
  
  if (!$result) 
	  { 
  $message = 'ERROR:' . mysql_error();  
  return $message; 
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
 //echo '<a href="/php.html">Click here!</a>'; 
 
//mysqli_close($mysqli);
	 
	 
		



//start ehre


 // include "..\php\connection.php" ;
  //echo "hello";
    //$query = "SELECT * FROM table1";
	//$result = mysqli_query($conn,$query);
	 
	// while($value = mysqli_fetch_array($result))
	// { echo $value['NAME'] , " ";
          // echo $value['AGE'] , " ";
		  // echo $value['RANK'] , "<br>" ;
		  // }

		  
		  
		  
		  
		  
		  
		  
		  
     /* while($value = mysqli_fetch_array($result))
	 { 
           
        //echo $value['column']; // Print a single column data
              echo print_r($value);       // Print the entire row data

 
      }
	 
	 
	 
	 while($value = mysqli_fetch_array($result))
	 {    $i=0;
          $j=(int)(sizeof($value))/2;
		  //echo $j;
         while($i!=$j)
		 {      
          //foreach($value as $value)
		  //{
            echo " ";
		       print_r($value[$i]);
			  
		  //}
		   
		 $i++;
		 } echo "<br>";
                
 
     
   }*/
?>