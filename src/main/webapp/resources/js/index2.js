{
window.onload= function(){
  var count = 1;
  $('.Picturecount').on('click', function () {
    if (count == 1) {
      $('.slider-container').css('transform', 'translateX(-100vw)');
      count++;
    } else if (count == 2) {
      $('.slider-container').css('transform', 'translateX(-200vw)');
      count++;
    } else {
      $('.slider-container').css('transform', 'translateX(0vw)');
      count = 1;
    }
  });
}
$(document).ready(function() {
    $('.flex-item').on('click', function(e) {
        //e.preventDefault();

        const submenu = $(this).find('.submenu');

        if (submenu.css('visibility') === 'visible') {
            submenu.css('visibility', 'hidden');
        } else {
            submenu.css('visibility', 'visible');
        }
    });
});
}
