<html>
<body>

<div id="main">

<h1 style="color:#0066cc;"><strong>Course List and Grades</strong></h1>

</div>

<div style="background-color:white;">

<?php

$link = mysql_connect('ecsmysql', 'cs332g40', 'veiseigu');

if (!$link) {
die('Could not connect: ' . mysql_error());
}

mysql_select_db("cs332g40",$link);

$query = "SELECT C_Title as 'Course Title', E_Course_Number as 'Course Number', 
			E_Section_Number as 'Section Number', E_Grade as 'Grade'					
	
	FROM ENROLLMENT, COURSE
	WHERE E_Course_Number = C_Number
	AND E_CWID =" .$_POST["studentCWID"];

$result = mysql_query($query,$link) or die(mysql_error());

$i=0; 
if ($i<mysql_numrows($result)) 
{ echo "<BR>", "Student CWID: " .$_POST["studentCWID"], "<BR>";
  echo "Total Classes: ", mysql_numrows($result), "<BR>", "<BR>";

  for($i=0; $i<mysql_numrows($result); $i++) 
  {
   echo "Course Title: ", mysql_result($result,$i,"Course Title"), "<BR>";
   echo "Course Number: ", mysql_result($result,$i,"Course Number"), "<BR>";
   echo "Section Number: ", mysql_result($result,$i,"Section Number"), "<BR>";
   echo "Grade: ", mysql_result($result,$i,"Grade"), "<BR>", "<BR>";
  }

 }
else
{ echo "CWID Not Found", "<BR>", "Student Not Found!", "<BR>", "<BR>"; }

// Close Database
mysql_close($link);
?>

<button onclick="goBack()">Return to Main Page</button>

<script>
function goBack() {
    window.history.back();
}
</script>

</div>
</body>
</html>
