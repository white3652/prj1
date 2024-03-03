<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.SQLException" %>   
    
<jsp:useBean id="dto" class="human.dto.MemberDTO" />
<jsp:setProperty name="dto" property="*" />
<jsp:useBean id="dao" class="human.dao.MemberDAO" />
<c:catch var="errorMsg">
	<c:set var="newDto" value="${dao.updateMember(dto)}" />
</c:catch>
<c:if test="${not empty errorMsg}">
 회원정보 변경시 예외 발생
</c:if>

<c:choose>
	<c:when test="${not empty newDto}">
		<c:remove var="member" />
		<c:set var="member" value="${newDto}" scope="session" />
		<c:redirect url="../main/index.jsp"/>
	</c:when>
	<c:otherwise>
		<c:set var="msg" value="시스템 문제로 회원정보가 정상적으로 변경되지 못했습니다. 다음에 다시 변경해 주세요." scope="request"/>
		<jsp:forward page="../main/update2.jsp"/>
	</c:otherwise>
</c:choose>
