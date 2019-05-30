<!DOCTYPE html>
<html>
<body>
<style>
body{
	background-color:rgb(200,200,200);
}


.topnav {
    background-color: #333 ;
    overflow: hidden;
    margin-left: 25%;
    margin-top:-1%;
	position:absolute;

}
.topnav a {
    float:left;
    color: #ffffff;
    text-align:center; 
    padding: 11px 36px;
    text-decoration: none;
    font-size: 17px;
}
.topnav a:hover {
    background-color: rgb(111, 238, 255);
    color: black;
}
.topnav a.active {
    background-color: rgb(209, 0, 63);
    color: white;
}
#eng{
	margin-top:10%;
	margin-left: 20%;
    position:absolute;
    color:rgb(209, 0, 63);
	font-weight:bold;
    font-size:20px;;
}
#med{
	margin-top: 10%;
	margin-left:60%;
    position:absolute;
    color:rgb(209, 0, 63);
	font-weight:bold;
    font-size:20px;
}

</style>

<div class="topnav">
    <a  href="AllotmentSite.html">HOME</a>
    <a  href="register.html">REGISTER</a>
    <a class="active"  href="retrievecollege.php">COLLEGES</a>
    <a href="retrievedegree.php">DEGREES</a>
    <a href="retrievecourse.php">COURSES</a>
    <a href="displayform.html">DISPLAY</a>
    <a href="editform.html">EDIT</a>
  </div>

<div id="eng">
<h3 style="color:black;">ENGINEERING</h3>
 <?php

  include "..\php\connection.php" ;
  
    $query = "SELECT Coll_name FROM college where Deg_code='ENG'";
	$result = mysqli_query($conn,$query);
	 //echo " ENGINEERING ","<br><br>";
	 
	 
	 while($value = mysqli_fetch_array($result))
	 { echo $value['Coll_name'] , "<br><br>";
           
		}
		  

 ?>
</div>

<div id="med">
<h3 style="color:black;">MEDICAL</h3>
 <?php

  include "..\php\connection.php" ;
  
    $query = "SELECT Coll_name FROM college where Deg_code='MED'";
	$result = mysqli_query($conn,$query);
	 //echo " MEDICAL ","<br><br>";
	 
	 
	 while($value = mysqli_fetch_array($result))
	 { echo $value['Coll_name'] , "<br><br>";
           
		}
		  

 ?>
</div>



</body>
</html>