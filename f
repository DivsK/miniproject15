
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>login page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1"><!DOCTYPE html>


  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
      background-color: #1abc9c; /* Green */
      color: #ffffff;
  }
  .bg-2 { 
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 { 
      background-color: #ffffff; /* White */
      color: #555555;
  }
  .bg-4 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
  }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="h.php">About</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="f.php">Sign up</a></li>
       
      </ul>
    </div>
  </div>
</nav>
<form method="post" action="work.php" role="from" class="form-inline">
              <div>...</div>
              <div>...</div>
              <div>...</div>
		<p><label class="feild" for="USERID" ><font color="Aquamarine ">username :</font></lable><input type="text" class="form-control" name="LOGIN" required="required" placeholder="USER NAME" /></P>
            <p><label class="secure feild" for="USERPASSWORD"><font color="Aquamarine">password :<font></lable><input type="password" class="form-control" name="PASSWORD" required="required" placeholder="PASSWORD" /></P>
	      <input type="submit" name="submit" class="btn btn-primary active" value="signin">
		</form>
<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">MINI PROJECT</h3>
  <img src="geu1.jpg" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350">
  <h3>TRANSFORMING DREAMS INTO REALITY</h3>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h3 class="margin">MINI PROJECT</h3>
  <a href="#" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-search" onclick="msg()"></span> Search
  </a>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">Know More</h3><br>
  <div class="row">
    <div class="col-sm-4">
      
      <img src="geu.png" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
   
      <img src="geu3.jpg" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <img src="geu4.jpg" class="img-responsive margin" style="width:80%" alt="Image">
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p> Theme Made By <a href="f.php">AKASH TYAGI</a></p> 
</footer>

</body>
</html>
