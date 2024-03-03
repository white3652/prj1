<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.SQLException" %>   
    
<jsp:useBean id="dto" class="human.dto.MemberDTO" />
<jsp:setProperty name="dto" property="*" />
<jsp:useBean id="dao" class="human.dao.MemberDAO" />

<c:catch var="errorMsg">
	<c:set var="result" value="${dao.join(dto)}" />
</c:catch>
<c:if test="${empty errorMsg}"> ${errorMsg} </c:if>

<!-- 회원가입 성공시 메인페이지로 이동
회원가입 실패시 회원가입페이지로 이동
페이지 이동: 새로운 페이지로 이동 - response.sendRedirect(페이지URL)
- 서버에 새로운 페이지 요청을 하는 것과 같기 때문에 기존의 요청은 결과값 없이 응답되고
  바로 서버로 요청을 보냄
  (기존의 request, response객체는 소멸하고 새로운 request, response객체 생성됨) -->

<c:choose>
	<c:when test="${result eq 1}">
		<c:redirect url="/main/index.jsp" context="/smart_web2023" />
	</c:when>
	<c:otherwise>
		<c:redirect url="/jsprj/join.jsp" context="/smart_web2023" />
	</c:otherwise>
</c:choose>



















<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO, human.dao.MemberDAO, java.sql.SQLException"%>
<jsp:useBean id="dto" class="human.dto.MemberDTO" scope="session"/>
<jsp:setProperty name="dto" property="*" />
<jsp:useBean id="dao" class="human.dao.MemberDAO" /> 

<%
request.setCharacterEncoding("UTF-8");


int result =0;
try {
    result = dao.join(dto);
    
} catch (SQLException e) {
    e.printStackTrace();
}

if(result == 1) {
    response.sendRedirect("../main/index2.jsp");
}else {
    response.sendRedirect("../jsprj/join.jsp");
}
%> --%>