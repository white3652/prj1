<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dao" class="human.dao.BoardDAO" />
<c:set var="boardList" value="${dao.getBoards()}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script type="text/javascript" src="../resources/js/write2.js"></script>
  <link rel="stylesheet" href="../resources/css/list2.css">
  <title>Document</title>
</head>
<body>
	    <div class="form-background">
        <div class="form-white">
            <div class="formList_header">
                <div>
                    <form action="#" method="post" name="searchForm">
                        <select name="search" class="selectField">
                            <option value="subject">제목</option>
                            <option value="name">작성자</option>
                            <option value="content">내용</option>
                        </select>
                        <input type="text" name="searchtext" class="textField"/>
                        <input type="button" value="검색" class="bb_button"/>
                    </form>
                </div>
                <div>
                    <input type="button" value="글올리기" class="bb_button" onclick="javascript:location.href='write.jsp';"/>
                </div>
            </div>
            <div class="formList_list">
                <div class="board_post">
                    <div class="num"><strong>번호</strong></div>
                    <div class="subject"><strong>제목</strong></div>
                    <div class="name"><strong>작성자</strong></div>
                    <div class="created"><strong>작성일</strong></div>
                    <div class="files"><strong>자료첨부</strong></div>
                    <div class="views"><strong>조회수</strong></div>

                </div>
                <c:choose>
                	 <c:when test="${empty boardList}">
                        <div class="no-posts-message">등록된 게시물이 없습니다</div>
                    </c:when>
                    <c:otherwise>
                    	<c:forEach var="board" items="${boardList}">
			                <div class="board_post">
			                    <div class="num">${board.b_idx}</div>
			                    <div class="subject">
			                        <a href="view.jsp?b_idx=${board.b_idx}"> ${board.title}</a>
			                    </div>
			                    <div class="name">${board.writer}</div>
			                    <div class="created">${board.post_date}</div>
			                    <div class="views">${board.read_cnt}</div>
			                    <c:if test="${not empty board.originfile_name}">
			     					<a href="download.jsp?originfile_name=${board.originfile_name}&savefile_name=${board.savefile_name}">
			     					<img src="../resources/css/img/download.png" alt="첨부파일 이미지" width="10px" height="10px">
			     					</a>
			     				</c:if>
			                </div>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</body>
</html> --%>