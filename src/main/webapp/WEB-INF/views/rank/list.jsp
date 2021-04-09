<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 <!-- Bootstrap core JS-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- Favicon-->
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
<!-- Third party plugin CSS-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/styles.css" rel="stylesheet" />

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<meta charset="UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger dropdown" href="#page-top"><strong>옷감</strong></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">옷 조합만들기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">내 옷 취향 찾기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="../startbootstrap-creative-gh-pages/rnak.html">랭킹보기</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#contact">회원게시판</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link js-scroll-trigger dropdown-toggle" data-toggle="dropdown" href="#">내 정보</a>
                            
                            <div class="dropdown-menu">
                                
                                <a class="dropdown-item" href="#">내 옷장</a>
                                <a class="dropdown-item" href="#">나의 pick모음</a>
                          </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <header class="masthead">
        
<!-- <header class="masthead"> -->
<div class="modal" id="testModal1">
              <div class="modal-dialog">
                <div class="modal-content">
                  <!-- header -->
                  <div class="modal-header">
                  <!-- 모달 팝업의 제목이 옵니다. -->
                    <h5>상세정보</h5>
                    <button type="button" class="btn btn-danger btn-lg"
                        data-dismiss="modal" aria-label="Close">&times;</button>
                  </div>
                  <!-- body -->
                  <div class="modal-body">
                    <!-- 모달 팝업의 내용은 여기에 옵니다. -->
                    <div id="upcloth"></div><br>
                  </div>
                  <!-- footer -->
                  <div class="modal-footer">
                    <!-- 모달 팝업에서 버튼 등 기타 요소들이 여기에 옵니다. -->
         			<button type="button" id="clothUp" class="btn btn-primary">상의 옷정보</button>
					<button type="button" id="clothDown" class="btn btn-primary">하의 옷정보</button>
                    <button type="button" class="btn btn-danger" 
                     data-dismiss="modal"> 닫기 </button> 
                  </div>
                </div>
              </div>
            </div>


<div class="row">
	<table class="table table-hover">
	<tr>
 		<th>순위</th>
		<th>이미지</th> 
		<th>득표 수</th>
		
	</tr>
	<tr id="yun">
 	<c:forEach var="a" items="${list}"> 

 	
		 	<input type="hidden" id="number" class="number" name="number" value="${a.cglikeno}">
		 	<td> ${a.cglikeno}</td>
			<td><img class='img-fluid img-thumbnail upNum' data-cglikeno="${a.cglikeno}" data-toggle='modal' data-target='#testModal1' src='/resources/assets/img/portfolio/fullsize/${a.cgupcimg}'
									style='display: block; weith:100px; height:100px; margin: 0 auto; object-fit: cover;' />
				<img class='img-fluid img-thumbnail downNum' data-cglikeno="${a.cglikeno}" data-toggle='modal' data-target='#testModal1' src='/resources/assets/img/portfolio/fullsize/${a.cgdowncimg}'
									style='display: block; weith:100px; height:100px; margin: 0 auto; object-fit: cover;' />
									</td>
			<td>${a.cglike_cnt}</td>
			
 	</c:forEach> 
</tr>
	</table>
</div>
</header>

<!-- </header> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(data){
	
// 	var cgrno = 1;

// 			console.log(cgrno);

// 	function getImg(){
// 		$.getJSON("/list" + cgrno, function(){
			
			
// 			var str = "";
			
// 			$(data).each(function(){

// 				str += "<img class='img-fluid img-thumbnail' src='/resources/assets/img/portfolio/fullsize/"
// 					+ this.cgmiximg
// 					+ "' style='display: block; margin: 0 auto; object-fit: cover;' />";
// 					)};
// 			$("#aa").html(str);
			
// 		})
// 	}
// 	getImg();
	
	var cglikeno = 0;
	
	
	$("#yun").on("click", "td .upNum", function(){
		
		var cglike = $(this)
 		var cglikeno = cglike.data("cglikeno");
		
		console.log("------------");
		console.log(cglikeno);
	})
	
	function getLink(){
		$.getJSON("/rank/list/" + cglikeno, function(data){
		console.log($("#number").val());
			
		
		var str = "";
			
			str += "<a href='" + data.cgupclink + "'><img class='img-fluid img-thumbnail' src='/resources/assets/img/portfolio/fullsize/"
				+ data.cgupcimg
				+"' style='display:block; margin: 0 auto; object-fit: cover;' /></a>"
				+"<a href='" + data.cgdownclink + "'><img class='img-fluid img-thumbnail' src='/resources/assets/img/portfolio/fullsize/"
				+ data.cgdowncimg
				+"' style='display:block; margin: 0 auto; object-fit: cover;' /></a>";
				
				$("#upcloth").html(str);
				
				console.log(data.cgupclink);
		});
	};//getLink
	getLink();
	
	$(".modal").on("click", function(){
		
	})


})//document


</script>

</body>
</html>