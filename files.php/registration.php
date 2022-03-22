<?php
 session_start();

?>
<!DOCTYPE html>
<html>
<head>
	<title>Admin login</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
  body {
    text-align: center;
}
  form{
    width: 50%;
    display: inline-block;
    margin-left: 25%;
    margin-right: 25%;
    text-align: left;
  }
  </style>
</head>
<body background="images/login.jpg" style="background-size: cover;">
    

  <form action="" method="post">
  	<h3 style="padding-top: 100px; padding-bottom: 20px;color: white;">Registration</h3>
  <div class="form-group">
    <input type="text"  name="uname" class="form-control col-sm-5" id="uname" placeholder="Enter Username" required>
  </div><div class="form-group">
    <input type="email"  name="email" class="form-control col-sm-5" id="email" placeholder="Enter email"  required>
  </div>
  <div class="form-group">
    <input type="password" class="form-control col-sm-5" name="password" placeholder="Enter Password"  id="pwd" required>
  </div>
  <input type="submit" name="submit" class="btn btn-success col-sm-5" value="Register">
</form>

<form id="red" name="red" action="admin_login.php" method="get">
  <button type="submit" class="btn btn-danger col-sm-5">Login</button>
</form>

</body>
</html>

<?php
 include('db/connection.php');

 if(isset($_POST['submit']))
 {

   $myQuery = "INSERT INTO admin_login(name, email, password) VALUES('$_POST[uname]', '$_POST[email]', '$_POST[password]');";
   //echo $myQuery;
  $query = mysqli_query($conn,$myQuery);


  if ($query) {
      ?>
  <script type="text/javascript">
   alert("Registration successful");
  </script>
<?php
       $_SESSION['email']=$_POST['email'];
     
   }else{
    ?>
    <script type="text/javascript">
      alert("The username already exist.");
    </script>
  <?php   }




}

  

?>


   