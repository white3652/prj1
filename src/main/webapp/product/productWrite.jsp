<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script type="text/javascript" src="../resources/js/write2.js"></script>
  <link rel="stylesheet" href="../resources/css/bbs_write.css">
  <title>Document</title>
</head>
<body>
<div class="form-background">
        <div class="form-white">
            <form id="writeForm" name="writeForm" method="post" action="writeprocess.jsp" enctype="multipart/form-data">
                <div class="w-100">
                <input type="hidden" name="m_idx" value="${member.m_idx}">
                <input type="hidden" name="writer" value="${member.member_id}">
                <h3>글쓰기</h3>
                <p>제목</p>
                <input class="form-input" type="text" id="title" name="title" placeholder="제목을 입력해주세요.">
                <p>이메일</p>
                <input class="form-input" type="email"id="email" name="email" value="${member.email}">
                </div>
                <div class="w-50">
                <p>작성자</p>
                <input class="form-input" type="text" id="writer" name="writer" value="${member.member_name}" disabled>
                </div>
                
                <div class="w-50">
                <p>연락처</p>
                <input class="form-input" type="tel" id="${member.handphone}" name="${member.handphone}" value="${member.handphone }" disabled>
                </div>
                <div style="clear:both"></div>
                <div class="w-100">
                    <p>강의설명</p>
                    <textarea class="form-input form-textarea" id="content" name="content" cols="50" rows="20"></textarea>
                </div>
                <div class="w-100">
                    <input class="form-input form-file" type="file" name="uploadFile">
                </div>
                <hr>
                <div class="button-container">
                    <button type="submit" class="button">확인</button>
                    <button class="button" id="cancelButton" onclick="location.href='../main/index.jsp'">취소</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>