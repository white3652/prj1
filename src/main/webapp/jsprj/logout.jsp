<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
//HttpSession session = request.getSession();
            session.invalidate();
            //메인페이지로 이동
            response.sendRedirect("../main/index.jsp");
%>