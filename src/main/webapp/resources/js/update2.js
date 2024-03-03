window.onload = function() {
  const regExp_phone = /010-\d{4}-\d{4}/;
  const regExp_pw = /(?=.*[A-Za-z])(?=.*[0-9])(?=.*[~!@#$%^()+|=]){8,16}/;

  const frm = document.forms['frmJoin'];

  frm.addEventListener('submit', function(e) {
    let isValid = false;

    if (document.querySelector('#member_name').value === '') {
      alert('이름을 작성해주세요.');
      document.querySelector('#member_name').focus();
    } else if (document.querySelector('#member_pw').value === '') {
      alert('비밀번호를 설정해주세요.');
      document.querySelector('#member_pw').focus();
    } else if (!regExp_pw.test(document.querySelector('#member_pw').value)) {
      alert("비밀번호는 8글자 이상 16글자 이하로 영문자, 숫자, 특수문자를 1개 이상 포함해야 합니다.");
      document.querySelector('#member_pw').focus();
    } else if (document.querySelector('#member_pw').value !== document.querySelector('#member_repw').value) {
      alert('비밀번호가 일치하지 않습니다.');
      document.querySelector('#handphone').focus();
    } else if (!regExp_phone.test(document.querySelector('#handphone').value)) {
      alert("전화번호는 010-숫자4자리-숫자4자리로 입력해야 합니다.");
      document.querySelector('#handphone').focus();
    } else if (document.querySelector('#email').value === '') {
      alert('이메일 주소를 입력해주세요.');
      document.querySelector('#email').focus();
    } else {
      isValid = true;
    }

    if (!isValid) {
      e.preventDefault();
      e.stopPropagation();
    } else {
      alert('수정을 완료했습니다.');
    }
  });

  const withdrawButton = document.querySelector('#withdrawButton'); 
  withdrawButton.addEventListener('click', function() {
    const isConfirmed = confirm('정말로 탈퇴하시겠습니까?'); 

    if (isConfirmed) {
      window.location.href = 'delete_process.jsp'; 
    }
  });
};