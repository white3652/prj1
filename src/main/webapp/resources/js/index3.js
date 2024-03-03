        document.getElementById('checkDuplicateBtn').addEventListener('click', function() {
            var memberId = document.getElementById('member_id').value;

            if (memberId.trim() === '') {
                alert('아이디를 입력하세요.');
                return;
            }

            document.getElementById('checkIdForm').submit();
        });