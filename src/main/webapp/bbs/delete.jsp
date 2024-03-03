<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="b_idx" value="${param.b_idx}" />
<jsp:useBean id="dao" class="human.dao.BoardDAO" />

<!-- 게시글 삭제에 대한 요청처리 -->
<c:set var="result" value="${dao.delete(b_idx)}" />

<c:choose>
	<c:when test="${result eq 1}"><!-- 게시글 삭제 요청 성공 -->
		<c:redirect url="/bbs/list.jsp"  context="/smart_web2023" />
	</c:when>
	<c:otherwise>
		<script>
			alert("게시글 삭제 처리 중 에러 발생");
			history.back();
		</script>
	</c:otherwise>
</c:choose>
