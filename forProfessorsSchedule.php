<html>
<body>

<div id="main">

<h1 style="color:#0066cc;"><strong>Professor Schedule</strong></h1>

</div>

<div style="background-color:white;">

<?php

$link = mysql_connect('ecsmysql', 'cs332g40', 'veiseigu');

if (!$link) {
die('Could not connect: ' . mysql_error());
}

mysql_select_db("cs332g40",$link);

$query = "SELECT C_Title as 'Course Title', S_Classroom as 'Classroom', S_Meeting_Days as 'Days', 
			S_Start_Time as 'Starting Time', S_End_Time as 'Ending Time', P_Title as 'Title', P_Name as 'Name'
		
		FROM COURSE, SECTION, PROFESSOR
		WHERE P_SSN = S_Professor_SSN 
		AND C_Number = S_Course_Number 
		AND P_SSN =" .$_POST["sno"];

$result = mysql_query($query,$link) or die(mysql_error());

$i=0; 
if ($i<mysql_numrows($result))
{

echo "<BR>", "Welcome ", mysql_result($result,1,"Title"), " ", mysql_result($result,1, "Name");
echo "<BR>", "Professor SSN: ".$_POST["sno"],"<BR>", "<BR>";

for($i=0; $i<mysql_numrows($result); $i++)
 {	 
 echo "Course Title: ", mysql_result($result,$i,"Course Title"), "<BR>";
 echo "Classrooms: ", mysql_result($result,$i,"Classroom"), "<BR>";
 echo "Meeting Days: ", mysql_result($result,$i,"Days"), "<BR>";
 echo "Start Time: ", mysql_result($result,$i,"Starting Time"), "<BR>";
 echo "End Time: ", mysql_result($result,$i,"Ending Time"), "<BR>", "<BR>";
 }

}

else
{ echo "Professor Not Found", "<BR>", "<BR>"; }

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
