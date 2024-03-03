<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO, human.dao.MemberDAO, java.sql.SQLException"%> 


 <% 
 session = request.getSession();
 MemberDTO dto = (MemberDTO)session.getAttribute("member");
 int m_idx = dto.getM_idx();
 %> 
<jsp:useBean id = "dao" class = "human.dao.MemberDAO" />


<%

request.setCharacterEncoding("UTF-8");
%>

<%
int result = 0;


try {
	
	result = dao.deleteMember(m_idx);

} catch (SQLException e) {
	e.printStackTrace();
}

if (result == 1) {
	
response.sendRedirect("logout.jsp");

} else {
	String msg = "시스템 문제로 회원정보가 정상적으로 변경되지 못했습니다. 다음에 다시 변경해주세요.";
	request.setAttribute("msg", msg);
	request.getRequestDispatcher("update.jsp").forward(request, response);
}




%>