<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/jstlHeader.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>祭り修正</title>
<link rel="stylesheet" href="../../../resources/assets/dist/css/bootstrap-4.5.0.min.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/area.css">
<link rel="stylesheet" href="../../../resources/assets/dist/css/blog.css" >
<script src="../../../resources/assets/dist/js/jquery-3.5.1.min.js"></script>
<script src="../../../resources/assets/dist/js/popper-1.16.0.min.js"></script>
<script src="../../../resources/assets/dist/js/bootstrap-4.5.0.min.js"></script>
<script src="../../../resources/assets/dist/js/jquery-1.11.3.min.js"></script>


<!--QnA 커스텀 css, js  -->
<!-- <link rel="stylesheet" href="../../../resources/QnA/css/broad.css"> -->
<!--로컬 js 오류남  -->
<!--  <script src="../../../resources/QnA/js/jquery.min.js"></script> -->
<!-- <script src="../../../resources/QnA/js/QnAwrite.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

function boardValidation(){
	
	var subject = $("#subject").val();
	var content = $("#content").val();
	var place 	= $("#place").val();
	var address	= $("#address").val();
	var s_Year	= $("#f_S_Year").val();
	var s_Month = $("#f_S_Month").val();
	var s_Day	= $("#f_S_Day").val();
	var l_Year	= $("#f_L_Year").val();
	var l_Month	= $("#f_L_Month").val();
	var l_Day	= $("#f_L_Day").val();
	var f_num	= ${fResult.f_Num};
	if(!subject){
		alert("祭りのタイトル入力");
		$("#subject").focus();
		return false;
	}else if(!content){
		alert("内容入力");
		$("#content").focus();
		return false;
	}else if(!place){
		alert("地域コード入力");
		$("#place").focus();
		return false;
	}else if(!s_Year){
		alert("開始年度入力");
		$("#f_S_Year").focus();
		return false;
	}else if(!s_Month){
		alert("開始月入力");
		$("#f_S_Month").focus();
		return false;
	}else if(!s_Day){
		alert("開始日入力");
		$("#f_S_Day").focus();
		return false;
	}else if(!l_Year){
		alert("終わる年度入力");
		$("#f_L_Year").focus();
		return false;
	}else if(!l_Month){
		alert("終わる月入力");
		$("#f_L_Month").focus();
		return false;
	}else if(!l_Day){
		alert("終わる日入力");
		$("#f_L_Day").focus();
		return false;
	}else {
		FestivalUpdate(subject,content,place,address,s_Year,s_Month,s_Day,l_Year,l_Month,l_Day,f_num);
	}
	
	}
	
function FestivalUpdate(sub,con,pla,add,s_y,s_m,s_d,l_y,l_m,l_d,fnum){
	
	$.ajax({
		url : "/Festival/FestivalUpdate",
		type:'POST',
		data : {
			f_Subject : sub,
			f_Content : con,
			place_Code: pla,
			f_Address : add,
			f_S_Year  : s_y,
			f_S_Month : s_m,
			f_S_Day	  : s_d,
			f_L_Year  : l_y,
			f_L_Month : l_m,
			f_L_Day   : l_d,
			f_Num	  : fnum
		},
		success:function(data){
			if(data == 1){
				alert("投稿登録が完了しました。");
				location.href="/Festival/FestivalView?f_Num=${fResult.f_Num}";
			}else {
				alert("書き込み登録失敗");
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
      
          
        <div class="col-sm-10 col-md-offset-3 " >
          <form>
                <div class=" text-center text-dark pt-5 " >
                    <h2 class="my-3">お祭り情報入力</h2>
                    </div>
           	
                    <h4 class="my-3">タイトル</h4>
                    <input type="text" class="form-control text-dark" id="subject" value="${fResult.f_Subject}">
           
                               <h4 class="my-3">内容</h4>
                    <textarea rows="10" cols="20" class="form-control text-dark" id="content" >${fResult.f_Content}</textarea>
           
                      
                    <h4 class="my-3">地域コード</h4>
                    <input type="text" class="form-control text-dark" id="place" value="${fResult.place_Code}">
   
   
   
                    <h4 class="my-3">住所</h4>
                    <input type="text" class="form-control text-dark" id="address" value="${fResult.f_Address}">
   
                 	 <h4 class="my-3">日</h4>
                    <input type="text" class="form-control text-dark" id="f_S_Year" value="${fResult.f_S_Year}">
                    <input type="text" class="form-control text-dark" id="f_S_Month" value="${fResult.f_S_Month}">
                    <input type="text" class="form-control text-dark" id="f_S_Day" value="${fResult.f_S_Day}">
                    <input type="text" class="form-control text-dark" id="f_L_Year" value="${fResult.f_L_Year}">
                    <input type="text" class="form-control text-dark" id="f_L_Month" value="${fResult.f_L_Month}">
                    <input type="text" class="form-control text-dark" id="f_L_Day" value="${fResult.f_L_Day}">


					
					 
                
                <div class="row justify-content-center my-4">
                    <button type="reset" id="join-submit" class="btn">
                   	     リセット<i class="fa fa-check spaceLeft"></i>
                    </button>
                     <input type="button" value="書く" class="btn" onclick="boardValidation()"/>
                     <input type="button" value="キャンセル" class="btn" onclick="window.close();"/>
                </div>
</form>
        </div>

    </article>
 	<%-- <jsp:include page="../inc/bottom.jsp" /> --%>

</body>
</html>