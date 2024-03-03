<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script type="text/javascript" src="../resources/js/login2.js"></script>
   <link rel="stylesheet" href="../resources/css/login2.css">
  <title>Document</title>
</head>
<body>
  <div class="form-background">
          	<%@ include file="../common/header3.jsp" %>
        	<br><br>
    <div class="form-white">
     	
            
     	
      <form action="login_process.jsp" id="loginForm" method="post" name="name">
        <div class="main-image">
          Study 로그인
        </div>
        <input class="form-input" type="text" id="member_id" name="member_id" placeholder="아이디를 입력해주세요" value="${cookie.member_id.value}">
        <input class="form-input-pw" type="password" id="member_pw" name="member_pw" placeholder="비밀번호 확인">
        <div style="clear: both;"></div>
        
        <td>
                 <%
                       String msg = (String)request.getAttribute("msg");
                       //setAttribute(String name, Object value): 속성으로 값을 추가할 때 Object타입으로 자동변환
                       //getAttribute(String name): Object - 변환값을 원하는 데이터형으로 강제타입변환해주어야 함
                       if(msg != null){
                           out.print(msg);
                       }
                 %>
        </td>
        <div class="checkbox-container">
          <input id="sub" type="checkbox" name="rememberId" ${empty cookie.member_id.value ? "":"checked"}>
          <label for="sub">아이디 저장</label>
        </div>
        <div class="form-button">
          <button type="submit">로그인</button>
        </div>
        <div class="guest-text">
          <span>아직 회원이 아니신가요?</span>
        </div>
        <div class="form-button">
          <button type="button" onclick="location.href='join.jsp'">회원가입</button>
        </div>
      </form>
    </div>
  </div>

  </body>
</html>
