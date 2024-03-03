<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO, human.dao.MemberDAO, java.sql.SQLException"%> 

<%
request.setCharacterEncoding("UTF-8");

String member_id = request.getParameter("member_id");
String member_pw = request.getParameter("member_pw");
String rememberId = request.getParameter("rememberId");

MemberDTO dto = null;
MemberDAO dao = new MemberDAO();
try {           
    dto = dao.login(member_id, member_pw);  
} catch (SQLException e) {
    e.printStackTrace();
}


// 로그인 성공시 dto에 MemberDTO객체가 저장이 됨
// 로그인 실패시 dto는 초기값 그대로 null이 딤
if(dto != null && dto.getCancel_or_not()==0) {
    // HttpSession session = request.getSession();
    // JSP페이지가 Servlet으로 자동변환되면서 session객체를 생성해줌
    // _jspService()메소드 내에 session 생성구문
    //
    session.setAttribute("member", dto);
    	//쿠키 생성
	if(rememberId != null) {
	    member_id = request.getParameter("member_id");
	    Cookie cookie = new Cookie("member_id",member_id);
	    cookie.setMaxAge(24 * 60 * 60);
	    response.addCookie(cookie);

	} else {
		//체크박스 해지시 쿠키생성 안함
	    member_id = request.getParameter("member_id");
	    Cookie cookie = new Cookie("member_id",member_id);
	    cookie.setMaxAge(0);
	    response.addCookie(cookie);
	}
    // 메인페이지로 이동
    response.sendRedirect("../main/index.jsp");

} else {//로그인 실패
    // 로그인페이지로 이동: 로그인 페이지 재요청
     //response.sendRedirect("/human/day06_jsp/login.jsp");
	// 로그인 페이지로 이동:foward
	// request객체를 이용해서 로그인 실패시 안내메세지를 로그인 페이지에 출력
	//if(dto.getCancel_or_not()==1){
		
	//	String msg = 
	//}
	String msg = "아이디나 비밀번호가 일치하지 않습니다";
	request.setAttribute("msg", msg);
	
	// 1.RequestDispatcher객체를 이용한 방법
	//request.getRequestDispatcher("/day05_member/update2.jsp").forward(request,response);
	
	//2. pageContext객체를 이용한 방법(JSP에서만 가능)
	pageContext.forward("login.jsp");
	
	
}
%>
