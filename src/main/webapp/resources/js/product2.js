window.onload = function() {
    document.getElementById('writeForm').addEventListener("submit", function(e) {
        let valid = false;
        const name = document.getElementById('name').value;
        const price = document.getElementById('price').value;

        if (name === '') {
            alert('상품명을 입력해주세요.');
        } else if (price === '' || isNaN(price)) {
            alert('가격을 숫자로 입력해주세요.');
        } else {
            alert('제출되었습니다.');
            valid = true;
        }
        if (!valid) {
            e.preventDefault();
            e.stopPropagation();
        }
    });
};