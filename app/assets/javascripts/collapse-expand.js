$(".scroll-area").scrollspy({target: "#myNavbar"});

$('#toggle-view li').click(function () {
var text = $(this).children('div.panel');
var cont=$(this).children('span').html();
if (text.is(':hidden')) {
text.slideDown('200');
$(this).children('span').find('span').html('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-');	
} else {
text.slideUp('200');
$(this).children('span').find('span').html('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+');	
}
});
