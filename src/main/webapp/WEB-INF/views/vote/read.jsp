<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
<style type="text/css">
a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}

</style>
</head>
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
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="/rank/list">랭킹보기</a></li>
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

		<div class="modal" id="testModal1">
              <div class="modal-dialog">
                <div class="modal-content">
                  <!-- header -->
                  <div class="modal-header">
                  <!-- 모달 팝업의 제목이 옵니다. -->
                    <h5>투표결과 보기</h5>
                  </div>
                  <!-- body -->
                  <div class="modal-body">
                    <!-- 모달 팝업의 내용은 여기에 옵니다. -->
                    투표결과 <br>
                    <div id="voteInfo"></div><br>
                  </div>
                  <!-- footer -->
                  <div class="modal-footer">
                    <!-- 모달 팝업에서 버튼 등 기타 요소들이 여기에 옵니다. -->
         			<button type="button" id="clothUp" class="btn btn-primary">상의 옷정보</button>
					<button type="button" id="clothDown" class="btn btn-primary">하의 옷정보</button>
					<form name="vote" action="/vote" method="get">
					<button id="leftBtn" class="btn btn-primary">투표하기</button>
					</form>
<!--                     <button type="button" class="btn btn-danger" 
                     data-dismiss="modal"> 닫기 </button> -->
                  </div>
                </div>
              </div>
            </div>
            <div class="modal" id="testModal2">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <!-- header -->
                    <div class="modal-header">
                    <!-- 모달 팝업의 제목이 옵니다. -->
                      <h5>투표결과 보기</h5>
<!--                       <button type="button" class="btn btn-danger" 
                           data-dismiss="modal">&times;</button> -->
                    </div>
                    <!-- body -->
                    <div class="modal-body">
                      <!-- 모달 팝업의 내용은 여기에 옵니다. -->
                      투표결과<br>
                      <div id="voteInfoB"></div><br>
                    </div>
                    <!-- footer -->
                    <div class="modal-footer">
                      <!-- 모달 팝업에서 버튼 등 기타 요소들이 여기에 옵니다. -->
					<button type="button" id="clothUp" class="btn btn-primary">상의 옷정보</button>
					<button type="button" id="clothDown" class="btn btn-primary">하의 옷정보</button>
					<form name="vote" action="/vote" method="get">
					<button id="rightBtn" class="btn btn-primary">투표하기</button>
					</form>
<!--                       <button type="button" class="btn btn-danger" 
                          data-dismiss="modal"> 닫기 </button> -->
                        </div>
                      </div>
                    </div>
                  </div>
				
	<div class="row">
		<div class="col-6">
			<div id="checkOne">
				
			</div>
			<div id="voteInfo"></div><br>
			</button>
			
		</div>
		<div class="col-6">
		
			<div id="checkTwo">

			</div>
		</div>
		
	</div>
	<div id="modDiv">
	
		                      <div id="test"></div>
	</div>
	
		<button id="next" class="btn btn-primary" style="margin-top: 5%"><a href="/vote">다음 질문</a></button>
	

             </header>


<script type="text/javascript">
$(document).ready(function(){
// 	alert("제이쿼리작동");
	var cglikeno = ${list};
	var cglikeno2 = ${listA};
	
	function getVote(){
	
		$.getJSON("/vote/read/" + cglikeno, function(data){
				var str = "";
			
					str += "<strong> 득표수 : "+ (data.cglike_cnt + 1) + "</strong>"
					
					console.log(data.cglike_cnt);
					
					$("#voteInfo").html(str);
		});
	}//getVote
		getVote();
		function getVoteB(){
			$.getJSON("/vote/read/" + cglikeno2, function(data){
				var str = "";
					str += "<strong> 득표수 : "+ (data.cglike_cnt + 1) + "</strong>";
				$("#voteInfoB").html(str);
			});
		}//getvoteB
		getVoteB();
	function getOne(){
	$.getJSON("/vote/read/" + cglikeno, function(data){
		var str = "";
			console.log(data.cgupcimg);
			str =   "<img class='img-fluid img-thumbnail'  data-toggle='modal' data-target='#testModal1' src='/resources/assets/img/portfolio/fullsize/"
						+ data.cgupcimg 
						+"' style='display: block; margin: 0 auto; width: 80%; height: 150%; object-fit: cover;' />"
						+"<img class='img-fluid img-thumbnail'  data-toggle='modal' data-target='#testModal1' src='/resources/assets/img/portfolio/fullsize/"
						+ data.cgdowncimg 
						+"' style='display: block; margin: 0 auto; width: 80%; height: 150%; object-fit: cover;' />"
			$("#checkOne").html(str);
		});
	}//getone
	getOne();
	function getTwo(){
		$.getJSON("/vote/read/" + cglikeno2, function(data){
			
			var str = "";
				console.log(data.cgupcimg);
				str =   "<img class='img-fluid img-thumbnail' data-toggle='modal' data-target='#testModal2' src='/resources/assets/img/portfolio/fullsize/"
							+ data.cgupcimg 
							+"' style='display: block; margin: 0 auto; width: 80%; height: 150%; object-fit: cover;' />"
							+"<img class='img-fluid img-thumbnail'  data-toggle='modal' data-target='#testModal2' src='/resources/assets/img/portfolio/fullsize/"
							+ data.cgdowncimg 
							+"' style='display: block; margin: 0 auto; width: 80%; height: 150%; object-fit: cover;' />"
				$("#checkTwo").html(str);
			});
		}//gettwo
		getTwo();
	$("#leftBtn").on("click", function() {
		console.log(cglikeno);
		$.ajax({
			type: 'put',
			url: '/vote/' + cglikeno,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "PUT"
			},
			dataType: "text",
			data: JSON.stringify({
				cglikeno : cglikeno
			}),
			success : function(result){
				console.log("투표성공");
			},
			error : function() {
				console.log("에러발생!!");
			}
		});//ajax
	});//leftBtn
	
	$("#rightBtn").on("click", function(){
		console.log(cglikeno2);
		$.ajax({
			type: 'put',
			url: '/vote/' + cglikeno2,
			headers : {
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "PUT"
			},
			dataType: "text",
			data: JSON.stringify({
				cglikeno : cglikeno2
			}),
			success : function(result){
				console.log("투표성공");
			},
			error : function() {
				console.log("에러발생!!");
			}
		});//ajax
	});//rightBtn


});//document


</script>


</body>
</html>


