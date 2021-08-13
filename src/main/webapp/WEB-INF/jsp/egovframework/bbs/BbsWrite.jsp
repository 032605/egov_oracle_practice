<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<h1>게시글 작성</h1>

		<form action="BbsWrite_Action.do" name="writeForm" method="post" enctype="multipart/form-data">
			<div class="write-form">
			
				<ul>
				   	<li>
						<label for="">작성자</label>
						<input class="title" type="text" name="name" placeholder="작성자를 입력하세요">
					</li>
					<li>
						<label for="">제목</label>
						<input class="title" type="text" name="title" placeholder="제목을 입력하세요">
					</li>
					<li>
						<label for="">내용</label>
						<textarea name="content"></textarea>
					</li>
					<li>
					<li>
						<label for="">비밀번호</label>
						<input class="title" type="password" name="passwd" placeholder="비밀번호를 입력하세요">
					</li>

					<li>
						<label for="">공개여부</label>
						<div class="checkbox">
							<input type="radio" name="openYn" value="Y" checked="checked">공개
							<input type="radio" name="openYn" value="N">비공개
						</div>
					</li>
					<li class="check-box"> <!-- 관리자가 로그인 했을 때만 보이도록함 -->
						<label for="">상단 공지 여부</label>
						<div class="checkbox">
					      <label><input type="checkbox" name="noticeYn" value="Y"></label>
						</div>
					</li>
					<li>
						<label for="">첨부파일</label>
						<input type="file" id="files" name="files" multiple="multiple">
					</li>
				</ul>
			</div> <!-- write-form -->
			
			<div class="write-btn-box">
				<a href="#" onclick="fn_check();" >등록</a>
				<a href="/BbList.do">취소</a>
			</div>
		</form>

<script type="text/javascript">

function fn_check() {
	
	
	if(title = "") {
		alert('제목을 작성해주세요');
	}
	else {
		document.writeForm.submit();
		alert('글 등록');
	}
}
</script>

</body>
</html>