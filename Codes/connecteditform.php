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
   echo $query;
   
   if(mysqli_connect_error())
	{ die('connect error('.mysqli_connect_errno().')' .mysqli_connect_error());
	}
	else
	{ $sql=$query;
	
	 if($conn->query($sql))
	 {    //echo $conn->query($sql);
		 echo "EDITED SUCCESSFULLY";
	 }
	  else
	 echo "error :".$sql."<br>".$conn->error;
	
	$conn->close();
	} 


?> 