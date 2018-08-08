<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Welcome to my library</title>

    <!-- Bootstrap core CSS -->
    <link href="/Myblog/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/Myblog/css/product.css" rel="stylesheet">
  </head>

  <body>

<!-- -------------------------------------------------------------------------------------------------------- -->       

    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
    
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal">LOGIN</h1>    
      </div>
        
      <!-- 상단 왼쪽 -->  
       <div class="product-device shadow-sm d-none d-md-block">
       	<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  			<div class="carousel-inner">
   			 <div class="carousel-item active">
   			   <img class="d-block w-100" src="image/main1-1.jpg" width="450" height="500" alt="First slide">
   			 </div>
   			 <div class="carousel-item">
   			   <img class="d-block w-100" src="image/main1-2.jpg" height="500" alt="First slide">
    		</div>
   			 <div class="carousel-item">
  			    <img class="d-block w-100" src="image/main1-3.jpg" height="500" alt="First slide">
    		</div>
 			 </div>
		</div>
       </div>
       
      <!-- 상단 오른쪽 -->
      <div class="product-device product-device-2 shadow-sm d-none d-md-block">
         <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  			<div class="carousel-inner">
   			 <div class="carousel-item active">
   			   <img class="d-block w-100" src="image/main2-1.jpg" height="465" alt="First slide">
   			 </div>
   			 <div class="carousel-item">
   			   <img class="d-block w-100" src="image/main2-2.jpg" height="465" alt="First slide">
    		</div>
   			 <div class="carousel-item">
  			    <img class="d-block w-100" src="image/main2-3.jpg" height="465" alt="First slide">
    		</div>
 			 </div>
		</div>
       </div>
       
    </div>
          
    <!-- -------------------------------------------------------------------- -->

 <div class="container">
   <div class="row">
     <!-- Blog Entries Column -->
     <div class="col-md-8">
       <div class="content-section">
      		<form method="POST"  action="<%=request.getContextPath() %>/member?cmd=member_login">
       			<fieldset class="form-group">
       				 <legend class="border-bottom mb-4"></legend>
       				 
       				 <div class="form-group">
       				 		<label class="form-control-label">ID</label>
       				 		<input class="form-control form-control-lg" type="text" name="id" maxlength="20" required autofocus>
       				 </div>
       				 <div class="form-group">
       				 		<label class="form-control-label">Password</label>
       				 		<input class="form-control form-control-lg" type="password" name="password" maxlength="20" >
       				 </div>
       				
       				 <div class="border-top pt-3">
       				 	<small calss="text-muted" >
       				 		Remember Me? <input type="checkbox" name="idsave" value="on">
       				 	</small>
       				 </div>
       				 <div class="form-group">
       				 	<button class="btn btn-outline-info" type="submit" style="float:right">Login</button>
       				 </div>
       			</fieldset>
       		</form>
       </div>
     </div>




    <!-- -------------------------------------------------------------------------------------------------------- -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="/Myblog/js/popper.min.js"></script>
    <script src="/Myblog/js/bootstrap.min.js"></script>
    <script src="/Myblog/js/holder.min.js"></script>
    <script>
      Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
      });
    </script>
  </body>
</html>
