<html>
<body>

<div id="main">

<h1 style="color:#0066cc;"><strong>Distinct Grades</strong></h1>

</div>

<div style="background-color:white;">

<?php

$link = mysql_connect('ecsmysql', 'cs332g40', 'veiseigu');

if (!$link) {
die('Could not connect: ' . mysql_error());
}

mysql_select_db("cs332g40",$link);

$query = "SELECT E_Grade as 'Grade', COUNT(*) as 'Count'
	FROM ENROLLMENT, COURSE, SECTION
	WHERE C_Number = S_Course_Number
	AND E_Course_Number = C_Number
	AND E_Section_Number = S_Number
	AND S_Number = ".$_POST["sectionNumber"]."
	AND C_Number = '".$_POST["courseNumber"]."'
	GROUP BY Grade;";

$result = mysql_query($query,$link) or die(mysql_error());

$i=0; 
if ($i<mysql_numrows($result))
{ 
  echo "<BR>", "Course Number: " . $_POST["courseNumber"], "<BR>";
  echo "Section Number: " . $_POST["sectionNumber"],"<BR>", "<BR>";

  for($i=0; $i<mysql_numrows($result); $i++)
  { 
    echo mysql_result($result,$i,"Count"), " student(s) received: ", mysql_result($result,$i,"Grade"), "<BR>";
  }

  echo "<BR>";
}

else
{ echo "Course Sections Not Found", "<BR>", "<BR>"; }

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
