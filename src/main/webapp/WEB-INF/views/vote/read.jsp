<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


   <div class="row">
      <div class="col-md-6" value="${read.cgmixno}">투표 1번
			<img src="주소">
      </div>
      <div class="col-md-6">투표 2번
      	<img src="">
      </div>
    </div>


<button type="submit" id="nextVote">다음</button>






<script type="text/javascript">
$(document).ready(function(){
		
	 var random = (Math.random() + 1) * ${read.cgmixno};
	
	$('#nextVote').on("click", function(event){
		
		
		
		
	})
});

</script>



</body>
</html>