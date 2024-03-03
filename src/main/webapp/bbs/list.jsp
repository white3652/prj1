<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="dao" class="human.dao.BoardDAO" />
<!-- 검색관련 데이터를 저장하는 SearchDTO객체를 생성하고 전달값을 세팅함 -->
<jsp:useBean id="sDto" class="human.dto.SearchDTO" />
<jsp:setProperty name="sDto" property="*" />

<c:set var="boardList" value="${dao.getBoards(sDto)}" />

<!-- 1. 총게시물수 : totalRows  -->
<c:set var="totalRows" value="${boardList.size()}" />

<!-- 2. 한 페이지에 보여줄 게시물수 : rows_page -->
<c:set var="rows_page" value="10" />

<!-- 3. 한 페이지블록에 보여줄 페이지수 : pages_pageBlock -->
<c:set var="pages_pageBlock" value="5" />

<!-- 4. 현재 페이지번호 : pageNum -->
<c:choose>
	<c:when test="${empty param.pageNum}"><c:set var="pageNum" value="1" /></c:when>
	<c:otherwise><c:set var="pageNum" value="${param.pageNum}" /></c:otherwise>
</c:choose>

<!-- 5. 게시물의 시작번호 : startNum -->
<c:set var="startNum" value="${(pageNum-1)*rows_page +1}" />

<!-- 6. 게시물의 끝번호 : endNum -->
<c:set var="endNum" value="${(pageNum)*rows_page}" />

<!-- 7. 현재 페이지블록번호 : pageBlock -->
<c:choose>
	<c:when test="${empty param.pageBlock}"><c:set var="pageBlock" value="1" /></c:when>
	<c:otherwise><c:set var="pageBlock" value="${param.pageBlock}" /></c:otherwise>
</c:choose>

<!-- 8. 마지막/총 페이지번호 : total_pageNum -->
<fmt:parseNumber var="tPageNum" value="${Math.ceil(totalRows/rows_page)}" integerOnly="true" />
<c:set var="total_pageNum" value="${tPageNum}" />

<!-- 9. 마지막 페이지블록번호 : last_pageBlock -->
<fmt:parseNumber var="lPageBlock" value="${Math.ceil(total_pageNum/pages_pageBlock)}" integerOnly="true" />
<c:set var="last_pageBlock" value="${lPageBlock}" />

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
		<%@ include file="../common/header3.jsp" %>
		<br>
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
                <c:if test="${not empty member}" >
                <div>
                    <input type="button" value="글올리기" class="bb_button" onclick="javascript:location.href='write.jsp';"/>
                </div>
                </c:if>
            </div>
            <div class="formList_list">
            <div>게시글 수 : ${totalRows}</div>
                <div class="board_post">
                    <div class="num"><strong>번호</strong></div>
                    <div class="subject"><strong>제목</strong></div>
                    <div class="name"><strong>작성자</strong></div>
                    <div class="created"><strong>작성일</strong></div>
                    <div class="views"><strong>조회수</strong></div>
                    <div class="files"><strong>파일</strong></div>
                </div>
                <c:choose>
                	 <c:when test="${empty boardList}">
                        <div class="no-posts-message">등록된 게시물이 없습니다</div>
                    </c:when>
                    <c:otherwise>
                    	<c:forEach var="i" begin="${startNum}" end="${endNum}">
                    	<c:if test="${not empty boardList[i-1]}">
			                <div class="board_post">
			                    <div class="num">${i}</div>
			                    <div class="subject">
			                        <a href="view.jsp?b_idx=${boardList[i-1].b_idx}"> ${boardList[i-1].title} </a>
			                    </div>
			                    <div class="name">${boardList[i-1].writer}</div>
			                    <div class="created">${boardList[i-1].post_date}</div>
			                    <div class="views">${boardList[i-1].read_cnt}</div>
			                    
			                    <div class="files">
			                    <c:if test="${not empty boardList[i-1].originfile_name}">
			     					<a href="download.jsp?originfile_name=${boardList[i-1].originfile_name}&savefile_name=${boardList[i-1].savefile_name}">
			     					<img src="../resources/css/img/download.png" alt="첨부파일 이미지" width="10px" height="10px">
			     					</a>
			     				</c:if>
			     				</div>
			                </div>
			                </c:if>
                		</c:forEach>
                	</c:otherwise>
                </c:choose>
			<!-- 게시글이 있는 경우 페이지 네비게이션이 보여지도록 구현 -->
			<c:if test="${not empty boardList}" >
				<div class="div_paging">
					<%@ include file="paging.jsp" %>
				</div>
			</c:if>      
            </div>
        </div>
    </div>
</body>
</html>
