<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript" src="../resources/js/join2.js"></script>
  <link rel="stylesheet" href="../resources/css/join2.css">
  <title>Document</title>
</head>
<body>

<div class="form-background">
    <%@ include file="../common/header3.jsp" %>
    <div class="form-white">
        <form name="frm" method="post" action="join_process2.jsp">
            <div class="main-image">
                Study 회원가입
            </div>       
            <div class="w-100">
                <div class="w-70">
                    <p>아이디</p>
                    <div class="input-and-button">
                        <input class="form-input-w70" type="text" placeholder="내용을 입력해주세요" id="member_id" name="member_id">
                        <button type="button" id="repl-button"><p>중복확인</p></button>
                 	</div>
                 	 <div class="error-msg" id="idErrorMsg"></div>
             	</div>    	
                <div class="w-100">
                        <p>비밀번호</p>
                        <input class="form-input-info" type="password" placeholder="내용을 입력해주세요" id="member_pw" name="member_pw">
                         <div class="error-msg" id="pwErrorMsg"></div>
                </div>
                <div class="w-100">
                        <p>비밀번호 재입력</p>
                        <input class="form-input-info" type="password" placeholder="내용을 입력해주세요" id="member_repw">
                        <div class="error-msg" id="repwErrorMsg"></div>
                </div>
                <div>
                    <p>이름</p>
                	<input class="form-input-info" type="text" placeholder="내용을 입력해주세요" id="member_name" name="member_name">
                	<div class="error-msg" id="nameErrorMsg"></div>
                </div>
                    <div class="w-100">
                        <p>휴대폰번호</p>
                        <input class="form-input-info" type="text" placeholder="내용을 입력해주세요" id="handphone" name="handphone">
                        <div class="error-msg" id="phoneErrorMsg"></div>
                    </div>

                    <div class="w-100">
                        <p>이메일 주소</p>
                        <input class="form-input-info" type="email" placeholder="내용을 입력해주세요" id="email" name="email">
                         <div class="error-msg" id="emailErrorMsg"></div>
                    </div> 

                    <div class="w-100">
                        
                    </div>


                <input id="sub" type="checkbox">
                <label for="sub">약관동의</label> 
            </div>
            <input id="sub" type="checkbox">
            <label for="sub"><strong>전체동의</strong></label>  
            <div class="form-button2">
                <button type="submit" id="join_btn"><strong>회원가입</strong></button>
            </div>
        </form>  
    </div>
</div>

  </body>
</html>
