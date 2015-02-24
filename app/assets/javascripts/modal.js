
$(document).keyup(function(e) {

  if (e.keyCode == 27) { 
	$("#close-modal").trigger('click');

	 }  
});

jQuery('#myCarousel').carousel({
		interval: false
		
	});



$('.left.carousel-control').hide();

$('.left.carousel-control').click(function(){
if($('.carousel-inner .item:first').next().hasClass('active')) {
    $('.left.carousel-control').hide();
		$('.right.carousel-control').show();

}else{
		$('.left.carousel-control').show();
		$('.right.carousel-control').show();
}
});

$('.right.carousel-control').click(function(){
 if($('.carousel-inner .item:last').prev().hasClass('active')) {
		$('.left.carousel-control').show();
    $('.right.carousel-control').hide();
  }else{
		$('.left.carousel-control').show();
		$('.right.carousel-control').show();
	}

});
