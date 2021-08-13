<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="egovframework.com.cmm.util.EgovUserDetailsHelper" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>


  <h1>게시글 리스트</h1>
<div class="container">
		<div class = "row">
			<table class="table table-striped" style="text-align:center; border:1px solid #dddddd"> 
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>					
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
						<th style="background-color: #eeeeee; text-align: center;">조회수</th>
					</tr>
				</thead>
				<tbody>
					
						<c:forEach items="${result}" var="resultInfo" varStatus="status">
						<tr>
						
<%-- 						<form name=subForm action="<c:url value='/demo/bbs/Articledetail.do'/>" method='post'>		
						<input name="nttId" type="hidden" value="<c:out value="${resultInfo.nttId}"/>">
						<input name="bbsId" type="hidden" value="<c:out value="${resultInfo.bbsId}"/>"> --%>
		
						<td><c:out value='${resultInfo.bbsSeq}'/></td>
						<td><c:out value='${resultInfo.title}'/></td>
						<td><c:out value='${resultInfo.name}'/></td>
						<td><c:out value='${resultInfo.regDt}'/></td>
						<!-- </form> -->
						</tr>		
						
						</c:forEach>
						
				
				</tbody>
			</table>	
			<div class="btn btn-outline-info">
				<span><a href="<c:url value='/BbsWrite.do' />">글쓰기</a></span>
			</div>

		</div>
	</div>
<!--  
<table class="table table-hover table-striped text-center" style="border: 1px solid">

	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<c:forEach items="${boardList }" var="article" varStatus="status">		
				<td><c:out value='${article.nttId }'/></td>
				<td>${article.nttSj }</td>
				<td>${article.frstRegisterId }</td>
				<td>${article.frstRegisterPnttm }</td>		
			</c:forEach>
		</tr>
	</tbody>
</table>
<a class="btn btn-outline-info">글쓰기</a>


-->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-eMNCOe7tC1doHpGoWe/6oMVemdAVTMs2xqW4mwXrXsW0L84Iytr2wi5v2QjrP/xp" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js" integrity="sha384-cn7l7gDp0eyniUwwAZgrzD06kc/tftFf19TOAs2zVinnD/C7E91j9yyk5//jjpt/" crossorigin="anonymous"></script>

</body>
</html>