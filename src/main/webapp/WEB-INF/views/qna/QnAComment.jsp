<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<script>
var bno = '${result.qnA_Num}'; //게시글 번호
 
/* $('[name=commentInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
    var insertData = $('[name=commentInsertForm]').serialize(); //commentInsertForm의 내용을 가져옴
    commentInsert(insertData); //Insert 함수호출(아래)
}); */
 
 
 
//댓글 목록 
function commentList(){
    $.ajax({
        url : '/qnacomment/clist',
        type : 'get',
        data : {'bno':bno},
        success : function(data){
            var a =''; 
            $.each(data, function(key, value){ 
                a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                a += '<div class="commentInfo'+value.qnaCNum+'">'+'댓글번호 : '+value.qnaCNum;
                a += '<a onclick="commentUpdate('+value.qnaCNum+',\''+value.qnaCContent+'\');"> 수정 </a>';
                a += '<a onclick="commentDelete('+value.qnaCNum+');"> 삭제 </a> </div>';
                a += '<div class="commentContent'+value.qnaCNum+'"> <p> 내용 : '+value.qnaCContent +'</p>';
                a += '</div></div>';
            });
            
            $(".commentList").html(a);
        }
    });
}

function commentInsert(){
	var c_Content = $("#c_Content").val();
	var c_Num	  = "${result.qnA_Num}";
	if(!c_Content){
		alert("내용 입력은 필수 입니다..");
		$("#c_Content").focus();
		return false;
	}else{
	insertData(c_Content, c_Num)
		}
}

//댓글 등록
function insertData(c_Con, c_Num){
    $.ajax({
        url : '/jquery/QnACWrite',
        type : 'post',
        data :{ 
        	qnaCContent : c_Con,
        	qnaNum		: c_Num
        },
        success : function(data){
            if(data == 1) {
            	alert("댓글 등록이 완료되었습니다.");
            	
                commentList(); //댓글 작성 후 댓글 목록 reload
            }else {
				alert("글 등록 실패");
			}
		},error:function(){
			console.log("error");
		}
    });
}
 
//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function commentUpdate(qnaCNum, qnaCContent){
    var a ='';
    
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="content_'+qnaCNum+'" value="'+qnaCContent+'"/>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+qnaCNum+');">수정</button> </span>';
    a += '</div>';
    
    $('.commentContent'+qnaCNum).html(a);
    
}
 
//댓글 수정
function commentUpdateProc(qnaCNum){
    var updateContent = $('[name=content_'+qnaCNum+']').val();
    
    $.ajax({
        url : 'jquery/QnACUpdate',
        type : 'post',
        data : {'qnaCContent' : updateContent, 'qnaCNum' : qnaCNum},
        success : function(data){
            if(data == 1) commentList(bno); //댓글 수정후 목록 출력 
        }
    });
}
 
//댓글 삭제 
function commentDelete(qnaCNum){
    $.ajax({
        url : '/qnacomment/QnACDelete/'+qnaCNum,
        type : 'get',
        success : function(data){
            if(data == 1) commentList(bno); //댓글 삭제후 목록 출력 
        }
    });
}
 
 
 
 
$(document).ready(function(){
    commentList(); //페이지 로딩시 댓글 목록 출력 
});
 
</script>
