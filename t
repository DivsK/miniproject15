<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
     border: 1px solid black;
   
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
h2{
    padding: 0px 5px 10px 3px; 
    border: 1px #888888;
	background: #202020 ;
  text-align:center;
}
</style>
</head>
<body>
<?php 
include"conn.php";
if(isset($_POST['search']))
{
$search=$_POST['search'];
$sql="SELECT * from project WHERE given_name LIKE '".$search."%'";
$result=@mysql_query($sql) or die(@mysql_error());
$number =@mysql_num_rows($result);
echo ".$number.";
include"work.php";
print <<< HERE
<h2>SEARCH RESULT</h2>
<h3>$number RESULTS FOUND $search</h3> 
<table cellpadding="15" id="t01">
HERE;
echo "<table id='t01' class='table' ><thread><tr><font color='white'><th>rank</th><th>Name</th><th>amount</font></tr><thread>";
while($row=@mysql_fetch_array($result))
{
     echo "<tr class='success'><td>".$row["position"]."</td><td>" . $row["given_name"]. " </td><td>".$row["amount"]."</tr>";
     }
     echo "</table>";
}
?>
<html>
    <body>
        <div>
            <div>..</div>
     <a href="k.php" class="btn btn-info" role="button">plot</a>
        </div>
        </body>
        </html>
