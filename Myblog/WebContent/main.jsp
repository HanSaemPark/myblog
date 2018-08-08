<%@page import="com.saem.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  
  	<%
		MemberDAO memberDAO = new MemberDAO();
	%>
	
	
	<%
	
	String id = null;
    String admin = null;
    
    if (session.getAttribute("id") != null) {
    	
    	 System.out.println("사용자가 접속하였습니다.");
    		
       if(session.getAttribute("id").equals("melomelo11")){
          
          admin = (String) session.getAttribute("id");
          System.out.println("관리자가 사용자인척 접속");
          
       }
       //로그인을 한 상태!!
       id = (String) session.getAttribute("id");
                    
    }
    
	%>
  
<!-- -------------------------------------------------------------------------------------------------------- -->       
 
<nav class="site-header sticky-top py-1">
      <div class="container d-flex flex-column flex-md-row justify-content-between">
        <a class="py-2" href="/Myblog/main.jsp">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
        </a>
        
        <a class="py-2 d-none d-md-inline-block" href="#">Introduce</a>     
      	<a class="py-2 d-none d-md-inline-block" href="#"></a>
      	
<!-- main -->
        	      	      	      	
        <!-- <a class="py-2 d-none d-md-inline-block" href="#">Humanities</a>
        <a class="py-2 d-none d-md-inline-block" href="#">Economics</a>
        <a class="py-2 d-none d-md-inline-block" href="#">History</a>
        <a class="py-2 d-none d-md-inline-block" href="#">Novel</a>
        <a class="py-2 d-none d-md-inline-block" href="#">Literature</a>
        <a class="py-2 d-none d-md-inline-block" href="#">Essay</a> -->
        
   <div class="btn-group" role="group" aria-label="Basic example">
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  Humanities
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">What is Humanities ?</a>
              <a class="dropdown-item" href="#">Recommend Book List</a>
            </div>
        </div>
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  Economics
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">What is Economics ?</a>
              <a class="dropdown-item" href="#">Recommend Book List</a>
            </div>
        </div>
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  History
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">What is History ?</a>
              <a class="dropdown-item" href="#">Recommend Book List</a>
            </div>
        </div>
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  Novel
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">What is Novel ?</a>
              <a class="dropdown-item" href="#">Recommend Book List</a>
            </div>
        </div>
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  Literature
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">What is Literature ?</a>
              <a class="dropdown-item" href="#">Recommend Book List</a>
            </div>
        </div>
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  Essay
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">What is Essay ?</a>
              <a class="dropdown-item" href="#">Recommend Book List</a>
            </div>
        </div>
   </div>
                
        <a class="py-2 d-none d-md-inline-block" href="#"></a>

<!-- Login 창 -->
	

				<%
					if (id == null) {
				%>
				
    <div class="dropdown">
      	  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  		 접속하기
  	  </button>
  	<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
  	
  		 <a class="dropdown-item" href="<%=request.getContextPath() %>/member/loginForm.jsp">LOGIN</a>
  		 <a class="dropdown-item" href="<%=request.getContextPath() %>/member/joinForm.jsp">회원가입</a>
  		  		 
  	</div>
   </div>
   				<%
					} else {
				%>
					
	<div class="dropdown">
      	  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  		 접속하기
  	  </button>
  	<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
  	
  		 <a class="dropdown-item" href="<%=request.getContextPath() %>/member/loginForm.jsp">회원정보</a>
  		 <a class="dropdown-item" href="<%=request.getContextPath() %>/member/joinForm.jsp">글쓰기</a>
  		 <a class="dropdown-item" href="<%=request.getContextPath() %>/member?cmd=member_logout">로그아웃</a>
  		 
  	</div>
   </div>
   
   				<%
					}
				%>			
</nav>
   
<!-- -------------------------------------------------------------------------------------------------------- -->

    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
    
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal">Saem's Library</h1>
        <p>feat...</p>
        <a class="btn btn-outline-success" href="http://www.ypbooks.co.kr/book_arrange.yp?targetpage=book_week_best&pagetype=5&depth=1">YP BOOKS</a>
      </div>
        
      <!-- 상단 왼쪽 -->  
       <div class="product-device shadow-sm d-none d-md-block">
       	<div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
  			<div class="carousel-inner">
   			 <div class="carousel-item active">
   			   <img class="d-block w-100" src="image/main1-1.jpg" width="450" height="500" alt="First slide">
   			 </div>
   			 <div class="carousel-item">
   			   <img class="d-block w-100" src="image/main1-2.jpg" height="500" alt="second slide">
    		</div>
   			 <div class="carousel-item">
  			    <img class="d-block w-100" src="image/main1-3.jpg" height="500" alt="third slide">
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
   			   <img class="d-block w-100" src="image/main2-2.jpg" height="465" alt="second slide">
    		</div>
   			 <div class="carousel-item">
  			    <img class="d-block w-100" src="image/main2-3.jpg" height="465" alt="third slide">
    		</div>
 			 </div>
		</div>
       </div>
       
    </div>
    
    <!-- ---------------------------- 중   앙 ------------------------------------- -->
            
     <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-success">
     
     	<!-- <img class="d-block w-100" src="image/store1.png" width="250" height="520" alt="First slide"> -->
        
       <div class="jumbotron">
           <h1 class="display-4">----</h1>
           <p class="lead">----</p>
           <hr class="my-4">
          	 <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  				<ol class="carousel-indicators">
   					 <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
   					 <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
  					 <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  			    </ol>
	 			 <div class="carousel-inner">
		              <div class="carousel-item active">
		                 <img class="d-block w-100" src="image/store1.png" width="250" height="520" alt="First slide">
		              </div>
		              
		              <div class="carousel-item">
		                 <img class="d-block w-100" src="image/store2.png" width="250" height="520" alt="First slide">
		              </div>
		              
	                  <div class="carousel-item">
	                     <img class="d-block w-100" src="image/store3.png" width="250" height="520" alt="First slide">
	                  </div>
	                  
           		</div>
	              <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
		    </div>
             <hr class="my-4">	 
             	<a class="btn btn-outline-primary btn-lg" href="www.naver.com" role="button">Read More</a>
             <hr class="my-4">	
        </div>  	
     </div>
     
    <!-- -------------------------------------------------------------------- -->

<!--  1 단락 -->

	<div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
      <div class="bg-secondary mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 p-3">
          <h2 class="display-5">Literature</h2>
          <a href="#" class="btn btn-outline-light" role="button" aria-pressed="true">문학</a>
        </div>
        <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="image/liter.png" width="640" height="400">
        </div>
      </div>
      <div class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
          <h2 class="display-5">Essay</h2>
          <a href="#" class="btn btn-outline-light" role="button" aria-pressed="true">수필</a>
        </div>
        <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="image/ess.png" width="640" height="400">
        </div>
      </div>
    </div>    
       
<!--  2 단락 -->

	<div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
      <div class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
          <h2 class="display-5">Humanities</h2>
          <a href="#" class="btn btn-outline-light" role="button" aria-pressed="true">인문학</a>
        </div>
        <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="image/human.png" width="640" height="400">
        </div>
      </div>
      <div class="bg-info mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 p-3">
          <h2 class="display-5">Economics</h2>
          <a href="#" class="btn btn-outline-light" role="button" aria-pressed="true">경제학</a>
        </div>
        <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="image/social.png" width="640" height="400">
        </div>
      </div>
   </div>
        
<!--  3 단락 -->

	<div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
      <div class="bg-success mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 p-3">
          <h2 class="display-5">History</h2>
          <a href="#" class="btn btn-outline-light" role="button" aria-pressed="true">역사</a>
        </div>
        <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="image/history.png" width="640" height="400">
        </div>
      </div>
      <div class="bg-warning mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
        <div class="my-3 py-3">
          <h2 class="display-5">Novel</h2>
          <a href="#" class="btn btn-outline-light" role="button" aria-pressed="true">소설</a>
        </div>
        <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
        	<img src="image/novel.png" width="640" height="400">
        </div>
      </div>
    </div>
    
    <!-- ---------------------------- 마무리 중앙 ------------------------------------- -->
            
     <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-dark">
     
     	
     	
     </div>
          
    <!-- -------------------------------------------------------------------------------------------------------- -->

    <footer class="container py-5">
      <div class="row">
        <div class="col-12 col-md">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mb-2"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
          <small class="d-block mb-3 text-muted">&copy; 2018 - 08 - 06 </small>
          <small class="d-block mb-3 text-muted">&copy; Made by Saem</small>
        </div>
        <div class="col-6 col-md">
          <h5>Features</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">Cool stuff</a></li>
            <li><a class="text-muted" href="#">Random feature</a></li>
            <li><a class="text-muted" href="#">Team feature</a></li>
            <li><a class="text-muted" href="#">Stuff for developers</a></li>
            <li><a class="text-muted" href="#">Another one</a></li>
            <li><a class="text-muted" href="#">Last time</a></li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5>Resources</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">Resource</a></li>
            <li><a class="text-muted" href="#">Resource name</a></li>
            <li><a class="text-muted" href="#">Another resource</a></li>
            <li><a class="text-muted" href="#">Final resource</a></li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5>Resources</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">Business</a></li>
            <li><a class="text-muted" href="#">Education</a></li>
            <li><a class="text-muted" href="#">Government</a></li>
            <li><a class="text-muted" href="#">Gaming</a></li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5>About</h5>
          <ul class="list-unstyled text-small">
            <li><a class="text-muted" href="#">Team</a></li>
            <li><a class="text-muted" href="#">Locations</a></li>
            <li><a class="text-muted" href="#">Privacy</a></li>
            <li><a class="text-muted" href="#">Terms</a></li>
          </ul>
        </div>
      </div>
    </footer>

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
