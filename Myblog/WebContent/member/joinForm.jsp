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
    <script language="javascript">
		// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
		//document.domain = "abc.go.kr";
		
		function goPopup(){
			// 주소검색을 수행할 팝업 페이지를 호출합니다.
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
			var pop = window.open("/Blog/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
			
			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		}
		
		
		function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
				// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
				document.form.roadFullAddr.value = roadFullAddr;
			
				
		}
    </script>
  </head>

  <body>

<!-- -------------------------------------------------------------------------------------------------------- -->       
 
    <nav class="site-header sticky-top py-1">
      <div class="container d-flex flex-column flex-md-row justify-content-between">
        <a class="py-2" href="/Myblog/main.jsp">
          <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mx-auto"><circle cx="12" cy="12" r="10"></circle><line x1="14.31" y1="8" x2="20.05" y2="17.94"></line><line x1="9.69" y1="8" x2="21.17" y2="8"></line><line x1="7.38" y1="12" x2="13.12" y2="2.06"></line><line x1="9.69" y1="16" x2="3.95" y2="6.06"></line><line x1="14.31" y1="16" x2="2.83" y2="16"></line><line x1="16.62" y1="12" x2="10.88" y2="21.94"></line></svg>
        </a>
        
        <a class="py-2 d-none d-md-inline-block" href="#">Introduce</a>     
      	<a class="py-2 d-none d-md-inline-block" href="#"></a>
    	     
   <div class="btn-group" role="group" aria-label="Basic example">
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  Humanities
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">Dropdown link</a>
              <a class="dropdown-item" href="#">Dropdown link</a>
            </div>
        </div>
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  Economics
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">Dropdown link</a>
              <a class="dropdown-item" href="#">Dropdown link</a>
            </div>
        </div>
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  History
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">Dropdown link</a>
              <a class="dropdown-item" href="#">Dropdown link</a>
            </div>
        </div>
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  Novel
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">Dropdown link</a>
              <a class="dropdown-item" href="#">Dropdown link</a>
            </div>
        </div>
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  Literature
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">Dropdown link</a>
              <a class="dropdown-item" href="#">Dropdown link</a>
            </div>
        </div>
        <div class="btn-group" role="group">
    		<button id="btnGroupDrop1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
     		  Essay
   			</button>
            <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
              <a class="dropdown-item" href="#">Dropdown link</a>
              <a class="dropdown-item" href="#">Dropdown link</a>
            </div>
        </div>
   </div>
                
        <a class="py-2 d-none d-md-inline-block" href="#"></a>


  
</nav>
    
<!-- -------------------------------------------------------------------------------------------------------- -->

 <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light"></div>
 
<!-- Page Content -->
 <div class="container">
   <div class="row">
     <!-- Blog Entries Column -->
     <div class="col-md-8">
       <div class="content-section">
       		<form id="form" name="form" method="POST" action="<%=request.getContextPath() %>/member?cmd=member_join">
       			<fieldset class="form-group">
       				 <legend class="border-bottom mb-4">Join</legend>
       				 
       				 <div class="form-group">
       				 		<label class="form-control-label">ID</label>
       				 		<input class="form-control form-control-lg" type="text" name="id" maxlength="20" placeholder="Put in your ID" required autofocus>
       				 </div>
       				 <div class="form-group">
       				 		<label class="form-control-label">Password</label>
       				 		<input class="form-control form-control-lg" type="password" name="password" maxlength="20" placeholder="Put in your password" required>
       				 </div>
       				 <div class="form-group">
       				 		<label class="form-control-label">Confirm_Password</label>
       				 		<input class="form-control form-control-lg" type="password" name="confirm" maxlength="20" placeholder="Confirm your password" required>
       				 </div>
       				 <div class="form-group">
       				 		<label class="form-control-label">Username</label>
       				 		<input class="form-control form-control-lg" type="text" name="username" maxlength="20" placeholder="Put in your username" required>
       				 </div>
       				 
       				 <div class="form-group">
       				 		<label class="form-control-label">Address</label>
       				 		<button class="btn btn-outline-success float-right" onclick="goPopup();" type="button">주소 찾기</button>
       				 	    <div id="list"></div>
                  			<div id="callBackDiv">
       				 	    <input class="form-control form-control-lg" type="text" name="roadFullAddr" maxlength="20" required readonly>
       				 </div>
       				        				 
       				 <div class="form-group">
       				 		<label class="form-control-label">Email</label>
       				 		<input class="form-control form-control-lg" type="email" name="email" maxlength="20" placeholder="Put in your Email" required>
       				 </div>
       				 <div class="border-top pt-3">
       				 	<small calss="text-muted">
       				 		Already Have An Account?<a class="ml-2" href="<%=request.getContextPath() %>/member/loginForm.jsp">Login</a>
       				 	</small>
       				 </div>
       				 <div class="form-group">
       				 	<button class="btn btn-outline-info" type="submit">Sign in</button>
       				 </div>
       			</fieldset>
       		</form>
       </div>
     </div>
    		 
   </div>
   <!-- /.row -->

 </div>
 <!-- /.container -->

</body>

</html>

  
    <!-- ---------------------------- 마무리 중앙 ------------------------------------- -->
            
     <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light"></div>
    
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
