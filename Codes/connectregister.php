<?php
  $dbhost = 'localhost' ;
  $username = 'root' ;
  $password = 'sql123' ;
  $db = "try1" ;
   $conn = mysqli_connect("$dbhost" , "$username" , "$password") ; //$conn was added 
       
   mysqli_select_db($conn , $db) ; //to select a database ... $conn was added
  
   
   
   //added
    $conn = new mysqli($dbhost,$username,$password,$db) ;
	
   $sid=filter_input(INPUT_POST ,'Sid');
$fname=filter_input(INPUT_POST ,'Fname');
$mname=filter_input(INPUT_POST ,'Mname');
$lname=filter_input(INPUT_POST ,'Lname');
  $gender=filter_input(INPUT_POST ,'Gender');
$dob=filter_input(INPUT_POST ,'DOB');
$mobno=filter_input(INPUT_POST ,'Mobno');
$email=filter_input(INPUT_POST ,'Email');
$anninc=filter_input(INPUT_POST ,'Annual_Inc');
  $caste=filter_input(INPUT_POST ,'Caste');
$m10=filter_input(INPUT_POST ,'Mark_10');
$m12=filter_input(INPUT_POST ,'Mark_12');
$p=filter_input(INPUT_POST ,'Phys');
  $c=filter_input(INPUT_POST ,'Chem');
$m=filter_input(INPUT_POST ,'Math');
$b=filter_input(INPUT_POST ,'Bio');
$houseno=filter_input(INPUT_POST ,'Houseno');
  $state=filter_input(INPUT_POST ,'State');
$city=filter_input(INPUT_POST ,'City');
$pin=filter_input(INPUT_POST ,'Pin');
$degree=filter_input(INPUT_POST ,'Degree');
  $course=filter_input(INPUT_POST ,'Course');
$chosencoll=filter_input(INPUT_POST ,'Chosen_College');
$bankpaid=filter_input(INPUT_POST ,'Bank_paid');


   
 if(mysqli_connect_error())
	{ die('connect error('.mysqli_connect_errno().')' .mysqli_connect_error());
	}
	else
	{ 
	
	$sql= "INSERT INTO student(Sid,Fname,Mname,Lname,Gender,DOB,Mobno,Email,Annual_Inc,Caste,Mark_10,Mark_12,Phys,Chem,Math,Bio,Houseno,State,City,Pin,Degree,Course,Chosen_College,Bank_paid) 
                      values('$sid','$fname','$mname','$lname','$gender','$dob',$mobno,'$email',$anninc,'$caste',$m10,$m12,$p,$c,$m,$b,$houseno,'$state','$city',$pin,'$degree','$course','$chosencoll','$bankpaid');";
	 if($conn->query($sql))
	 echo "NEW RECORD INSERTED SUCCESSFULLY";
	  else
	 echo "error :".$sql."<br>".$conn->error;
	
	$conn->close();
	} 


?> 