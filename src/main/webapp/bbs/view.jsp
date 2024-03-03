<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="dao" class="human.dao.BoardDAO" />
<c:set var="b_idx" value="${param.b_idx}" />
<!-- 게시글에 대한 조회수 업데이트하기 -->
${dao.updateRead_cnt(b_idx)}

<!-- 조회수가 적용된 게시글 가져오기 -->
<c:set var="board" value="${dao.getBoard(b_idx)}" />

<!DOCTYPE html>
<html>
<head>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script type="text/javascript" src="../resources/js/write2.js"></script>
  <link rel="stylesheet" href="../resources/css/view2.css">
  <title>Document</title>
</head>
<script>
	function deletePost() {
		const ans = confirm("정말로 삭제 하시겠습니까?");
		// 예 true, 아니오: false
		
		if(ans) {
			location.href="delete.jsp?b_idx=${board.b_idx}";
		}
	}

</script>
</head>
<body>
	
<body>
    <div class="form-background">
              	<%@ include file="../common/header3.jsp" %>
        	<br><br>
        <div class="view_title">
            
        </div>
        <div id="view_detail">
        	<div class="breadcrumb">
    			<a href="../main/index.jsp">Home</a> &gt;
    			<a href="../main/index.jsp">커뮤니티</a> &gt;
    			<a href="list.jsp">글 목록</a>
			</div>
            <div class ="view_content">

                    <table class="detail-item">
                        <tbody>
                            <tr>
                            	<th class="label">글제목</th>
                                <td colspan="8">${board.title}</td>
								<th class="label">작성일시</th>
                                <td>${board.post_date}</td>

                            </tr>
                            <tr>
                                <th class="label">작성자</th>
                                <td colspan="8">${board.writer}</td>
                                <th class="label">조회수</th>
                                <td>${board.read_cnt}</td>
                            </tr>
                            <tr>
    							<th class="label">첨부파일</th>
							    <td colspan="3">
							        <c:if test="${not empty board.originfile_name}">
							            <a href="download.jsp?originfile_name=${board.originfile_name}&savefile_name=${board.savefile_name}">
							                ${board.originfile_name}
							            </a>
							        </c:if>
							    </td>
							</tr>
                            <tr class="spacer-row">
    							<td colspan="4"></td>
							</tr>
                            <tr>
                            	<th class="label">내용</th>
                            </tr>
                            <tr class="user_Info">
                        		<td colspan="10">${board.content}</td>
                    		</tr>
                        </tbody>
                    </table>

                    
            </div>
            <div id="view_detail_footer">
                <div class="confirm_footer">
                    <c:if test="${(not empty member) and (member.m_idx eq board.m_idx)}">
                        <input type="button" value="수정하기" onclick="location.href='update.jsp?b_idx=${board.b_idx}'">
                        <input type="button" value="삭제하기" onclick="deletePost()">
                    </c:if>
                </div>
                <div class="list_footer">
                    <input type="button" value="목록보기" onclick="location.href='list.jsp'">
                </div>
            </div>
        </div>
    </div>

</body>
</html>