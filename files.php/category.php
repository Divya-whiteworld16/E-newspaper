  <?php
session_start();
if ( $_SESSION['email']==true) {
  # code...
}else
header('location:admin_login.php');
$page='category';
 include('include/header.php');

  ?>
<body style="background-colour:cornsilk;">
  
  <div style=" width: 90%; margin-left:20%; margin-right:10%">
  	    <div class="text-right">
<ul class="breadcrumb" >
          <li class="breadcrumb-item active"><a href="home.php">Home</a></li>
         
          <li class="breadcrumb-item active">category</li>
        </ul>   
  	    <a   class="btn btn-primary" href="addcaegory.php">Add Category</a> 

  	    	
   </div>
    <table class="table table-bordered">
       <tr>
         <th>Id</th>
         <th>Category Name</th>
         <th>Description</th>
         <th>Edit</th>
         <th>Delete</th>
       </tr></body>
        <?php
        include('db/connection.php');
        $query=mysqli_query($conn,"select * from category");
        while($row=mysqli_fetch_array($query)){

        ?>
        <tr>
          <td><?php echo $row['id'];?></td>
           <td><?php echo $row['category_name'];?></td>
            <td><?php echo substr($row['des'],0,200 );?></td>
            <td> <a href="edit.php?edit=<?php echo $row['id']; ?>" class="btn btn-info" >edit</a></td>
            <td> <a href="delete.php?del=<?php echo $row['id']; ?>" class="btn btn-danger" >delete</a></td>
        </tr>
       <?php } ?>  
    </table>

  </div>

  <?php
 include('include/footer.php')

  ?>