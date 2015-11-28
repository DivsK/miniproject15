<?php
include"work.php";
print <<<HERE
<head>
<body>
<h2><font color="white"> REQUIREMENT</font></h2>
<form id="myform" method="post">
<div>
<label for="year">Year:</label>
<input type="text" class="form-control" name="year" required="required" placeholder="1944-2012" width="10">
</div>
<div>
<label for="name">Name:</label>
<input type="text" class="form-control" name="name" required="required" placeholder="Enter name">
</div>
<label for="Gender">Gender:</label>
<input type="text" class="form-control" name="Gender" required="required" placeholder="male/female">
</div>
<div>...</div>
<div id="mysubmit">
<input type="submit" name="submit" class="btn btn-primary active" value="submit">
</div>
</form>
</body>
</html>
HERE;

?>
<?php
if(isset($_POST['submit'])){
  $name=$_POST['name'];
  $year=$_POST['year'];
  $Gender=$_POST['Gender'];
include"conn.php";

$sth = @mysql_query("SELECT * FROM project WHERE given_name='$name' AND gender='$Gender' AND year BETWEEN '$year' AND '2013' ");


$rows = array();
$flag = true;
$table = array();
$table['cols'] = array(

   

    array('label' => 'year', 'type' => 'string'),
    array('label' => 'amount', 'type' => 'number')

);

$rows = array();
while($r = mysql_fetch_assoc($sth)) {
    $temp = array();
    
    $temp[] = array('v' => (string) $r['year']); 

   
    $temp[] = array('v' => (int) $r['amount']); 
    $rows[] = array('c' => $temp);
}

$table['rows'] = $rows;
$jsonTable = json_encode($table);

}

?>

<html>
  <head>
   
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript">

   
    google.load('visualization', '1', {'packages':['corechart']});

  
    google.setOnLoadCallback(drawChart);

    function drawChart() {

    
      var data = new google.visualization.DataTable(<?=$jsonTable?>);
      var options = {
           title: 'Popularity',
          is3D: 'true',
          width: 800,
          height: 600
        };
     
      var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    }
    </script>
  </head>

  <body>

    <div id="chart_div"></div>
  </body>
</html>
