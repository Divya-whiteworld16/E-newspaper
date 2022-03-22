
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>VARTHAPATRAM</title>

     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- Popper JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <link href="style/blog.css" rel="stylesheet">
  </head>

  <body style="background-color:cornsilk;">

    <div class="container">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
                      </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">VARTHAPATRAM</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <a class="text-muted" href="#">
              <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mx-3"><circle cx="10.5" cy="10.5" r="7.5"></circle><line x1="21" y1="21" x2="15.8" y2="15.8"></line></svg>
            </a>
           
          </div>
        </div>
      </header>

      <div class="nav-scroller py-1 mb-2">
        <nav class="nav d-flex justify-content-between">
        <a class="p-2 text-muted" href="index.php">Home</a>
        <a class="p-2 text-muted" href="category_page.php?single=World">World</a>
         
         <a class="p-2 text-muted" href="category_page.php?single=Technology">Technology</a>
         
         <a class="p-2 text-muted" href="category_page.php?single=Culture">Culture</a>
         <a class="p-2 text-muted" href="category_page.php?single=Buisness">Business</a>
         <a class="p-2 text-muted" href="category_page.php?single=Politics">Politics</a>
       
         <a class="p-2 text-muted" href="category_page.php?single=Science">Science</a>
         <a class="p-2 text-muted" href="category_page.php?single=Health">Health</a>
         <a class="p-2 text-muted" href="category_page.php?single=Style">Style</a>
         <a class="p-2 text-muted" href="contact.php">Contact Us</a>
          
        </nav>
      </div>

      <div class="card" style="width:100%; height:402px;" >
     <iframe width="100%" height="400" src="https://www.youtube.com/embed/heFq-5rmUTY?autoplay=1&mute=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>

           <div class="row mb-2">
    <?php
    include('db/connection.php');
     $query1 =mysqli_query($conn,"select * from news order by id desc limit 1,2 ");
      while($row=mysqli_fetch_array($query1)){
         $category=$row['category'];
         $date=$row['date'];
         $title=$row['title'];
         $thumbnail=$row['thumbnail'];

      

    ?>

        <div class="col-md-6">
          <div class="card flex-md-row mb-4 box-shadow h-md-250">
             
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-primary"><?php echo $category ; ?></strong>
              <h3 class="mb-0">
                <a class="text-dark" href="single_page.php?single=<?php echo $row['id']; ?> "><?php echo $title; ?></a>
              </h3>
              <div class="mb-1 text-muted"><?php echo $date; ?></div>
            
              <a href="single_page.php?single=<?php echo $row['id']; ?> ">Continue reading</a>
            </div>
            <img class="card-img-right flex-auto d-none d-md-block" src="images/<?php echo $thumbnail;?>" alt="Card image cap" width="150">
          </div>
        </div>
      <?php } ?>
        
    </div>

    <main role="main" class="container">
      <div class="row">
        <div class="col-md-8 blog-main">
          <h3 class="pb-3 mb-4 font-italic border-bottom">
            Single Record
          </h3>


          <?php

       include('db/connection.php');
       $id=$_GET['single'];
          
           
           
        $query=mysqli_query($conn,"select * from news where id='$id'  ");
         while($row=mysqli_fetch_array($query)){
            $title=$row['title'];
            $date=$row['date'];
            $admin=$row['admin'];
            $thumbnail=$row['thumbnail'];
            $description=$row['description'];
         }
          ?>
          <div class="blog-post">
            <h2 class="blog-post-title"><?php echo $title; ?></h2>
            <p class="blog-post-meta"><?php echo $date; ?> <a href="#"><?php echo $admin;?></a></p>

            <p><img class="img img-thumbnail" style="height: 10%;" src="images/<?php echo $thumbnail;?>"  > </p>
            <hr>
            
            <blockquote>
              <?php echo $description ;?>
              
            </blockquote>
            
              
            </ol>
           
          </div><!-- /.blog-post -->
  
        
        </div><!-- /.blog-main -->

        <aside class="col-md-4 blog-sidebar">
          <div class="p-3 mb-3 bg-light rounded">
            <h4 class="font-italic">About</h4>
            <p class="mb-0">News Portal .24 hour News Platform. Stay up-to-date with us. Know your surrounding, stay informed and alert.</p>
          </div>

          <div class="p-3">
            <h4 class="font-italic">Archives</h4>
            <ol class="list-unstyled mb-0">
              <li><a href="#">March 2020</a></li>
              <li><a href="#">February 2020</a></li>
              <li><a href="#">January 2020</a></li>
              <li><a href="#">December 2021</a></li>
              <li><a href="#">November 2021</a></li>
              <li><a href="#">October 2021</a></li>
              <li><a href="#">September 2021</a></li>
              <li><a href="#">August 2021</a></li>
              <li><a href="#">July 2021</a></li>
              <li><a href="#">June 2021</a></li>
              <li><a href="#">May 2021</a></li>
              <li><a href="#">April 2021</a></li>
            </ol>
          </div>

          <div class="p-3">
            <h4 class="font-italic">Elsewhere</h4>
            <ol class="list-unstyled">
            <li><a href="https://www.instagram.com/enews">Instagram</a></li>
              <li><a href="https://twitter.com/breakingnews">Twitter</a></li>
              <li><a href="https://www.facebook.com/FoxNews">Facebook</a></li>
            </ol>
          </div>
        </aside><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </main><!-- /.container -->

    <footer class="blog-footer">
      <p>Developed by team ITM @PHP training</p>
      <p>
        <a href="#">Back to top</a>
      </p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../assets/js/vendor/popper.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
  </body>
</html>
