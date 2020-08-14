<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QnAUpdate</title>
<link rel="stylesheet" href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/area.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/blog.css" >
<script src="../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>


<!--QnA 커스텀 css, js  -->
<link rel="stylesheet" href="../../../resources/QnA/css/broad.css">
<!--로컬 js 오류남  -->
<!--  <script src="../../../resources/QnA/js/jquery.min.js"></script> -->
<!-- <script src="../../../resources/QnA/js/QnAwrite.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

function updateValidation(){
	
	var subject = $("#subject").val();
	var content = $("#content").val();
	
	if(!subject){
		alert("제목 입력은 필수입니다.");
		$("#subject").focus();
		return false;
	}else if(!content){
		alert("내용 입력은 필수 입니다.");
		$("#content").focus();
		return false;
	}else {
		QnAUpdate(subject,content);
	}
	
}

function QnAUpdate(sub,con){
	
	$.ajax({
		
		url : "/jquery/QnAUpdate",
		type:'POST',
		data : {
			QnA_Subject : sub,
			QnA_Content : con
		},
		success:function(data){
			if(data == 1){
				alert("글 수정이 완료되었습니다.");
				location.href="/qna/QnAView";
			}else {
				alert("글 등록 실패");
			}
		},error:function(){
			console.log("error");
		}
		
	})
	
}


</script>
</head>    
<body class="container-md vh-100 ">
    <article class="container row justify-content-center align-items-center" >
      
          
        <div class="col-sm-6 col-md-offset-3 " >
          <form>
                <div class=" text-center text-dark pt-5 " >
                    <h2 class="my-3">QnA-write</h2>
                    </div>
           	
                    <h4 class="my-3"> Subject</h4>
                    <input type="text" class="form-control text-dark" id="subject" placeholder="${result.qnA_Subject }">
           
                      
                    <h4 class="my-3">Writer</h4>
                    <input type="text" class="form-control text-dark" id="writer" readonly placeholder="${result.qnA_Write }">
   
                
           
                    <h4 class="my-3">Content</h4>
                    <textarea rows="10" cols="20" class="form-control text-dark" id="content"  placeholder="${result.qnA_Content }"></textarea>
           
					
					 
                
                <div class="row justify-content-center my-4">
                    <button type="reset" id="join-submit" class="btn">
                        Reset<i class="fa fa-check spaceLeft"></i>
                    </button>
                     <input type="button" value="Write" class="btn" onclick="updateValidation()"/>
                     <input type="button" value="Cancel" class="btn" onclick="javascript:location.href='QnAView'"/>
                </div>
</form>
        </div>

    </article>
    	<footer class="blog-footer ">
		<p>
			Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a>
			by <a href="https://twitter.com/mdo">@mdo</a>.
		</p>
		<p>
			<a href="#">Back to top</a>
		</p>
	</footer>
</body>
</html>