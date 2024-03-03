<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="human.dto.MemberDTO, human.dao.MemberDAO, java.sql.SQLException"%>
<!DOCTYPE html>
<html>
<head>
  <script type="text/javascript" src="../resources/js/checkId.js"></script>
   <link rel="stylesheet" href="../resources/css/checkId.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <form id="checkIdForm" action="checkId_process.jsp" method="get" name="frm">
    <input type="text" name="member_id" id="member_id" placeholder="아이디를 입력하세요" value="${member_id}">
    <button type="submit" id="checkDuplicateBtn">중복 확인</button>
    <br>
    <c:choose>
        <c:when test="${result == 1}">
            ${member_id}는 사용 가능한 아이디입니다.
        </c:when>
        <c:otherwise>
            중복된 아이디입니다. 다른 아이디를 입력해주세요.
        </c:otherwise>
    </c:choose>
</form>
</body>
</html>