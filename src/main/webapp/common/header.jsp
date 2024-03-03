<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<%@ page import="human.dto.MemberDTO" %>    
      <link rel="stylesheet" href="../resources/css/index3.css">
<!DOCTYPE html>
<html>
<head>
<% session = request.getSession();
	         MemberDTO dto = (MemberDTO)session.getAttribute("member");
	         if(dto != null){//로그인한 경우 %>
	         <div class="header-container">
            <nav class="nav-container">
                <div class="nav-title">
					<a href="/smart_web2023/main/index.jsp" class="logo">With Study</a>
                </div>
                <div class="nav-blankitem"></div>
                <div class="nav-item-container"> 
                    <div class="nav-item">
                    <a href="/smart_web2023/jsprj/description.jsp" class="no-decoration" style="color: inherit;">With</a></div>
                    <div class="nav-item">과정</div>
					<div class="nav-item" value="문의하기">
					<a href="/smart_web2023/bbs/list.jsp" class="no-decoration" style="color: inherit;">
						문의하기</a></div>
                </div>
                <div class="nav-blankitem" style="flex-grow: 1;"></div>

            
                <div class="nav-button">
                    <a href="/smart_web2023/jsprj/logout.jsp">
                    <button class="pastel-button beige-button">
                    로그아웃
                    </button>
                    </a>
                    <a href="/smart_web2023/jsprj/update.jsp">
                    <button class="pastel-button pink-button">
                    회원정보
                    </button>
                    </a>
                </div>
            </nav>
        </div>
	         	<section id="study-section">
            <div class="main-background">

                <div class="main-content">
                    <h1 class="main-title">외국어 공부 함께 시작해보세요</h1>
                    <div>
                    <a href=#>
                    <button class="wide-button">
                    이벤트 보러가기
                    </button>
                    </a>
                    </div>
                </div>
            </div>
        </section>     
	         

	         
	         <% }else{//로그인하지 않은 경우 %>
	         
	                 <div class="header-container">
            <nav class="nav-container">
                <div class="nav-title">
                    <a href="/smart_web2023/main/index.jsp" class="logo">With Study</a>
                </div>
                <div class="nav-blankitem"></div>
                <div class="nav-item-container"> 
                    <div class="nav-item">
                    <a href="/smart_web2023/jsprj/description.jsp" class="no-decoration" style="color: inherit;">With</a></div>
                    <div class="nav-item">과정</div>

                </div>
                <div class="nav-blankitem" style="flex-grow: 1;"></div>

            
                <div class="nav-button">
                    <a href="/smart_web2023/jsprj/login.jsp">
                    <button class="pastel-button beige-button">
                    로그인
                    </button>
                    </a>
                    <a href="/smart_web2023/jsprj/join.jsp">
                    <button class="pastel-button pink-button">
                    회원가입
                    </button>
                    </a>
                </div>
            </nav>
        </div>
             	<section id="study-section">
            <div class="main-background">

                <div class="main-content">
                    <h1 class="main-title">외국어 공부 함께 시작해보세요</h1>
                    <div>
                    <a href=/smart_web2023/jsprj/join.jsp>
                    <button class="wide-button">
                    회원가입
                    </button>
                    </a>
                    </div>
                </div>
            </div>
        </section>
        
        	      <% }%>
</head>
<body>

</body>
</html>