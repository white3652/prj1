window.onload = function() {
 	writeForm.addEventListener("submit", function(e) {
			let valid = false; 
            const title = document.getElementById('title').value;
            const email = document.getElementById('email').value;
            const writer = document.getElementById('writer').value;
            const content = document.getElementById('content').value;
	
            if (title == '') {
                alert('제목을 입력해주세요.');
            } else if (email == '' || !email.includes('@')) {
                alert('이메일 형식이 맞지 않습니다.');
            } else if (writer == '') {
                alert('작성자를 입력해주세요.');
            } else if (content == '') {
                alert('내용을 입력해주세요.');
            } else {
                alert('제출되었습니다.');
                valid = true;
            }
            if(!valid) {
				e.preventDefault();
				e.stopPropagation();
			}
        });
        	

       document.getElementById('cancelButton').addEventListener('click', function(e) {
            e.preventDefault();
            window.location.href = 'list.jsp';
            
        });
        
		};