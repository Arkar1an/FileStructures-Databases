<html>
<body>

<div id="main">

<h1 style="color:#0066cc;"><strong>Course Sections</strong></h1>

</div>

<div style="background-color:white;">

<?php

$link = mysql_connect('ecsmysql', 'cs332g40', 'veiseigu');

if (!$link) {
die('Could not connect: ' . mysql_error());
}

mysql_select_db("cs332g40",$link);

$query = "SELECT C_Number as 'Course Number', C_Title as 'Course Title', 
			S_Number as 'Section Number', S_Classroom as 'Classroom', S_Meeting_Days as 'Days', 
			S_Start_Time as 'Start Time', S_End_Time as 'End Time', (S_Seats-COUNT(E_CWID)) as 'Seats'
	
	FROM COURSE, ENROLLMENT, SECTION
	WHERE E_Section_Number = S_Number
	AND C_Number = S_Course_Number
	AND E_Course_Number ='".$_POST["courseNumber"]."'
	GROUP BY S_Number;";

$result = mysql_query($query,$link) or die(mysql_error());

$i=0; 
if ($i<mysql_numrows($result))
{ 
  echo "<BR>", "Course Number: ".$_POST["courseNumber"],"<BR>", "<BR>";

  for($i=0; $i<mysql_numrows($result); $i++)
  {
   echo "Section Number: ", mysql_result($result,$i,"Section Number"), "<BR>";
   echo "Room Number: ", mysql_result($result,$i,"Classroom"), "<BR>";
   echo "Meeting Days: ", mysql_result($result,$i,"Days"), "<BR>";
   echo "Start Time: ", mysql_result($result,$i,"Start Time"), "<BR>";
   echo "End Time: ", mysql_result($result,$i,"End Time"), "<BR>";
   echo "Number of Seats: ", mysql_result($result,$i,"Seats"), "<BR>", "<BR>";
   }
}
else
{ echo "Course Not Found", "<BR>", "<BR>"; }

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
