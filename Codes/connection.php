<?php
  $dbhost = 'localhost' ;
  $username = 'root' ;
  $password = 'sql123' ;
  $db = "try1" ;
   $conn = mysqli_connect("$dbhost" , "$username" , "$password") ; //$conn was added 
       
   mysqli_select_db($conn , $db) ; //to select a database ... $conn was added
  
   
   
   //added
    //$conn = new mysqli($dbhost,$username,$password,$db) ;
   //$id=filter_input(INPUT_POST ,'ID');
//$name=filter_input(INPUT_POST ,'NAME');
//$age=filter_input(INPUT_POST ,'AGE');
//$rank=filter_input(INPUT_POST ,'RANK');
   //$sql= "INSERT INTO table1(ID,NAME,AGE,RANK) values($id,$name,$age,$rank);";
   
 /*  if($conn->query($sql))
	 echo "new record inserted successfully";
	  else
	 echo "error :".$sql."<br>".$conn->error;
	
	$conn->close();  */
   
   
   
   
   
  //echo "connection2 successful" ;


?> 