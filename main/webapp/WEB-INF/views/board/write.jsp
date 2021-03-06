<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:if test="${empty sessionScope.userid}">
	<script>
		alert('로그인하세요!');
		location.href='/mvc/login';
	</script>
</c:if>


     <h2>게시판 - 글쓰기</h2>
     <form name="boardfrm" id="boardfrm">
     	<div>
     		<label>제목</label>
     		<input type="text" name="title">
     	</div>
     	<div>
     		<label>작성자</label>
     		<input type="text" name="userid" readonly value="${sessionScope.userid}">
     	</div>
     	<div>
     		<label class="dragup">본문</label>
     		<textarea name="contents" id="contents"></textarea>
     	</div>
     	<div>
             <label></label>
             <button type="button" id="writebtn">입력완료</button>
             <button type="reset">다시입력</button>
         </div>
     </form>

     
     <script>
     	var writebtn = document.getElementById('writebtn');
     	writebtn.addEventListener('click', writeok);
     	
     	function writeok() {
     		var frm = document.getElementById('boardfrm');
     		if (frm.title.value == '') {
     			alert('제목을 입력하세요!');
     			frm.title.focus();
     		}
     		else if (frm.contents.value == '') {
     			alert('본문 내용을 입력하세요!');
     			frm.contents.focus();
     		}
     		else {
     			frm.method = 'post';
     			frm.action = '/mvc/board/write';
     			frm.submit();
     		}
     	}
     </script>
