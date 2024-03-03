<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="resources/js/index3.js"></script>
  <title>Document</title>
  <link rel="stylesheet" href="resources/css/index3.css">
</head>

<body>
    <div class="wrap">
    	<%@ include file="/common/header.jsp" %>
        <br>
        <div class="round-menu">
          <div class="card-box">
            <a href="/smart_web2023/product/list.jsp">
              <img src="resources/css/img/pixel-3699345_640.png">
              <p>비즈니스</p>
              <p>비즈니스 일본어 회화튜터를 선택해서 실질적인 
                <br>성과를 도출하세요.</p>
            </a>
          </div>
          <div class="card-box">
            <a href="#">
              <img src="resources/css/img/basic-1295841_640.png">
              <p>회화기초</p>
              <p>               
                재미있는 게임이 가득한 <br>
                일본어 회화 수업을 통해
                <br>실력을 키워주세요.</p>
            </a>
          </div>
        </div>
        <br>
        <section class="testimonials">
            <div class="container">
                <h2>유학 없이도 유창하게 일본어로 말할 수 있어요!</h2>
                <div class="testimonials-box">
                    <div class="testimonial-item">
                        <img src="resources/css/img/avatars1.png">
                        <h5>jaesong</h5>
                        <p>"번역물 검수자로 일하고 있지만, 원어민 고유의 표현들을 이해하기 어려울 때가 있습니다. 하지만 with가 있기 때문에 언제든지 궁금한 부분을 물어볼 수 있고, 다양한 배경의 튜터들과 이야기하며 저의 영어 능력을 나날이 업그레이드 할 수 있어 감사합니다."</p>
                    </div>
                    <div class="testimonial-item">
                        <img src="resources/css/img/avatars2.png">
                        <h5>jaesong</h5>
                        <p>"회화기초를 통해 일본에 살고 있는 친구이자 멘토를 만들어줄 수 있어 기쁩니다. 처음에는 쑥스러웠지만 어느새 튜터와 신나게 수다를 떨고 있는 모습을 보면, 공부를 넘어선 소통의 수단으로써 영어를 활용하고 있는 제 자신이 자랑스러워집니다."</p>
                    </div>
                    <div class="testimonial-item">
                        <img src="resources/css/img/avatars3.png">
                        <h5>jaesong</h5>
                        <p>"1년간 일본에서 지낼 기회가 있었는데, 처음에는 일본 현지 학교에 적응하기 힘들었습니다. 그 때 With를 만나 일어로 의사표현을 하고, 학급 친구들과 더 잘 소통을 할 수 있었습니다. 개개인에 맞춘 일대일 수업을 제공하는 With 덕분입니다."</p>
                    </div>
                </div>
            </div>
        </section>
        <br>
        <hr>
        <%@ include file="../common/footer.jsp" %>
    </div>
</body>
</html>