/*window.onload = function(){  
  frm.querySelector('#repl-button').addEventListener("click", function(){
    window.open("checkId.jsp", "", "width=600,height=500");
});
    document.querySelector('.form-button2').addEventListener('click',function(e){
      let valid = false;
      const regExp_pw = /(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=]){8,16}/;
      const regExp_phone =/010-\d{4}-\d{4}/;
      if(document.getElementById('member_name').value == '') {
        alert('이름을 입력해주세요.');
      } else if (document.getElementById('member_id').value == '') {
        alert('가입하실 아이디 정보를 입력해주세요.');
      } else if (document.getElementById('handphone').value == '') {
        alert('핸드폰번호 정보를 입력해주세요.');
      }  else if (!regExp_phone.test(document.getElementById('handphone').value)) {
      alert("전화번호는 010-숫자4자리-숫자4자리 로 입력해야 합니다");
      document.querySelector('member_pw').focus();
      } else if(document.getElementById('member_pw').value == '') {
        alert('비밀번호 정보를 입력해주세요.');
      } else if (!regExp_pw.test(document.getElementById('member_pw').value)) {
      alert("비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.");
      document.querySelector('member_pw').focus();
      } else if (document.getElementById('member_repw').value == '') {
        alert('비밀번호 재입력 정보를 입력해주세요.');
      
      
      
      } else if (document.getElementById('email').value == '') {
        alert('이메일 정보를 입력해주세요.');
      }else{
        
        valid = true;
      }

      if(!valid) {
        e.preventDefault();
      } else {
        window.location.href = "../main/index2.jsp";
      }
      form.submit();
    });
           };
*/
window.onload = function () {
  document.querySelector('.form-button2').addEventListener('click', function (e) {
    let valid = true;

    const idErrorMsg = document.getElementById('idErrorMsg');
    idErrorMsg.style.display = 'none';

    const pwErrorMsg = document.getElementById('pwErrorMsg');
    pwErrorMsg.style.display = 'none';

    const repwErrorMsg = document.getElementById('repwErrorMsg');
    repwErrorMsg.style.display = 'none';

    const nameErrorMsg = document.getElementById('nameErrorMsg');
    nameErrorMsg.style.display = 'none';

    const phoneErrorMsg = document.getElementById('phoneErrorMsg');
    phoneErrorMsg.style.display = 'none';

    const emailErrorMsg = document.getElementById('emailErrorMsg');
    emailErrorMsg.style.display = 'none';

    const regExp_pw = /(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=]){8,16}/;
    const regExp_phone = /010-\d{4}-\d{4}/;
    const regExp_email = /\S+@\S+\.\S+/;

    const member_pw = document.getElementById('member_pw').value.trim();

    if (document.getElementById('member_id').value === '') {
      idErrorMsg.style.display = 'block';
      idErrorMsg.innerText = '가입하실 아이디 정보를 입력해주세요.';
      valid = false;
    } else if (member_pw === '') {
      pwErrorMsg.style.display = 'block';
      pwErrorMsg.innerText = '비밀번호 정보를 입력해주세요.';
      valid = false;
    } else if (!regExp_pw.test(member_pw)) {
      pwErrorMsg.style.display = 'block';
      pwErrorMsg.innerText = '비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.';
      valid = false;
    } else if (document.getElementById('member_repw').value === '') {
      repwErrorMsg.style.display = 'block';
      repwErrorMsg.innerText = '비밀번호 재입력 정보를 입력해주세요.';
      valid = false;
    } else if (document.getElementById('member_name').value === '') {
      nameErrorMsg.style.display = 'block';
      nameErrorMsg.innerText = '이름을 입력해주세요.';
      valid = false;
    } else if (document.getElementById('handphone').value === '') {
      phoneErrorMsg.style.display = 'block';
      phoneErrorMsg.innerText = '핸드폰번호 정보를 입력해주세요.';
      valid = false;
    } else if (!regExp_phone.test(document.getElementById('handphone').value)) {
      phoneErrorMsg.style.display = 'block';
      phoneErrorMsg.innerText = '전화번호는 010-숫자4자리-숫자4자리로 입력해야 합니다.';
      valid = false;
    } else if (document.getElementById('email').value === '') {
      emailErrorMsg.style.display = 'block';
      emailErrorMsg.innerText = '이메일 정보를 입력해주세요.';
      valid = false;
    } else if (!regExp_email.test(document.getElementById('email').value)) {
      emailErrorMsg.style.display = 'block';
      emailErrorMsg.innerText = '올바른 이메일 주소를 입력해주세요.';
      valid = false;
    }

    if (!valid) {
      e.preventDefault();
    } else {
      window.location.href = "../main/index2.jsp";
    }
  });
};
