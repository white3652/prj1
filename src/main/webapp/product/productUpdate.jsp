<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dao" class="human.dao.ProductDAO" />
<c:set var="b_idx" value="${param.b_idx}" />
<c:set var="product" value="${dao.getBoard(b_idx)}" />
${dao.updateRead_cnt(b_idx)}
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
              	<%@ include file="../common/header3.jsp" %>
        	<br><br>
        <div class="form-white">
            <form id="updateForm" name="writeForm" method="post" action="writeprocess.jsp" enctype="multipart/form-data">
                <div class="w-100">
                <input type="hidden" name="b_idx" value="${b_idx}" >
				<input type="hidden" name="m_idx" value="${member.m_idx}" >
                <input type="hidden" name="writer" value="${member.member_id}">
                <h3>수정하기</h3>
                <p>제목</p>
                <input class="form-input" type="text" id="title" name="title" value="${product.title}">
                <p>이메일</p>
                <input class="form-input" type="email" id="email" name="email" value="${member.email}">
                </div>
                <div class="w-50">
                <p>작성자</p>
                <input class="form-input" type="text" value="${member.member_name}" disabled>
                </div>        
                <div class="w-50">
                <p>연락처</p>
                <input class="form-input" type="tel" id="handphone" name="handphone" value="${member.handphone}" disabled>
                </div>
                <div style="clear:both"></div>
                <div class="w-100">
                    <p>내용</p>
                    <textarea class="form-input form-textarea" id="content" name="content" cols="50" rows="20" >${product.content}</textarea>
                </div>
                <div class="w-100">
                	<p>첨부파일: ${product.originfile_name}</p>
                    <input class="form-input form-file" type="file" name="uploadFile" >
                </div>
                <hr>
                <div class="button-container">
                    <button type="submit" class="button">수정완료</button>
                    <button class="button" id="cancelButton" onclick="javascript:window.history.back();">취소</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>