<!DOCTYPE html>
<html>
<body>
<style>

body{
	background-color: rgb(200, 200, 200);
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

#deg{
    /*border:2px solid;
    width:200px;*/
	 margin-left: 5%;
     margin-top:0%;
	color:rgb(209, 0, 63);
	font-weight:bold;
	font-size:25px;
    position:absolute;
}
#pic1{
     position:absolute;
     margin-left:25%;
     margin-top:5%;
}
#pic2{
     position:absolute;
     margin-left:60%;
     margin-top:15%;
}
#pic3{
     position:absolute;
     margin-left:20%;
     margin-top:30%;
}
/*#pic4{
     position:absolute;
}*/




</style>

<div class="topnav">
    <a  href="AllotmentSite.html">HOME</a>
    <a  href="register.html">REGISTER</a>
    <a  href="retrievecollege.php">COLLEGES</a>
    <a class="active" href="retrievedegree.php">DEGREES</a>
    <a href="retrievecourse.php">COURSES</a>
    <a href="displayform.html">DISPLAY</a>
    <a href="editform.html">EDIT</a>
  </div>



<div id="deg">
<h3 style="color:black;">WE OFFER:</h3>
 <?php

  include "..\php\connection.php" ;
  
    $query = "SELECT Dname FROM degree";
	$result = mysqli_query($conn,$query);
	 
	 
	 while($value = mysqli_fetch_array($result))
	 { echo $value['Dname'] , "<br><br>";
           
		}
		  
?>
</div>

<div id="pic1">
    <img src="deg1.jpg" height="250px">
    </div>
    <div id="pic2">
    <img src="deg4.jpg"  height="250px">
    </div>
    <div id="pic3" >
    <img src="slide3.jpg" height="250px">
    </div>
    <!--<div id="pic4">
    <img src="deg6.jpg"  height="250px">
    </div>-->




</body>
</html>