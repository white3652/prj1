<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="human.dto.MemberDTO" %>       
      <% session = request.getSession();
	         MemberDTO dto = (MemberDTO)session.getAttribute("member");%>    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script type="text/javascript" src="../resources/js/update1.js"></script>
  <link rel="stylesheet" href="../resources/css/join2.css">
  <title>Document</title>
</head>
<body>

  <div class="form-background">
            	<%@ include file="../common/header2.jsp" %>
    <div class="form-white">
      <form action="update_process2.jsp" id="frmupdate" method="post" name="frm_update">
      	<input type="hidden" name="m_idx" value="<%= dto.getM_idx() %>">
      	<br>
      	<br>
        <div class="main-image">
            Study 정보수정
        </div>
		
       
          <div class="w-70"> <p>아이디</p>
            <div class="w-100">
              <input class="form-input-info" type="text" placeholder="내용을 입력해주세요" id="member_id" name="member_id" value="${member.member_id}"disabled>
            </div>
            <div class="w-100"><p>이름</p>
          <input class="form-input-info" type="text" placeholder="내용을 입력해주세요" id="member_name" name="member_name" value="${member.member_name}"> 
        
            <div class="w-100"><p>비밀번호</p>
              <input class="form-input-info" type="password" placeholder="내용을 입력해주세요" id="member_pw" name="member_pw" value="${member.member_pw}">
            </div>
            <div>
              <p>휴대폰번호</p>
              <input class="form-input-info" type="text" placeholder="내용을 입력해주세요" id="handphone" name="handphone" value="${member.handphone}">
            </div>
            
            <div class="w-100"><p>이메일 주소</p>
              <input class="form-input-info" type="email" placeholder="내용을 입력해주세요" id="email" name="email" value="${member.email}">
            </div> 
          </div>
                  <div class="form-button2">
          <button type="submit" ><strong>회원정보수정</strong></button>
          <button type="button" onclick="location.href='../main/index.jsp'">취소</button>
          <button type="button" id="withdrawButton"onclick="confirmWithdrawal()"><strong>탈퇴</strong></button>
          <script>
  function confirmWithdrawal() {
    if (confirm("정말 회원 탈퇴를 하시겠습니까?")) {
      window.location.href = 'delete_process.jsp'; // 확인 시 탈퇴 프로세스로 이동
    } else {
      // 취소할 경우 작업을 취소하거나 원하는 동작을 수행합니다.
      // 예시: 아무 작업도 하지 않고 현재 페이지에 머무르도록 설정
    }
  }
</script>
         
        </div>
        </div>

      </form>  
    </div>
  </div>
  </body>
</html>