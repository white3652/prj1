  document.querySelectorAll('.form-button').forEach(function(button) {
      button.addEventListener('click', function(e) {
        let valid = true;
        let form = e.target.closest('form');

        if (form.querySelector('.form-input').value === '') {
          alert('아이디를 입력하지 않았습니다. 아이디를 입력해주세요.');
          e.preventDefault();
          valid = false;
        } else if (form.querySelector('.form-input-pw').value === '') {
          alert('비밀번호를 입력하지 않았습니다. 비밀번호를 입력해주세요.');
          e.preventDefault();
          valid = false;
        }

        if (valid) {

          redirectToIndex();
        }
      });
    });
    function redirectToIndex() {
      window.location.href = './index.html';
    }