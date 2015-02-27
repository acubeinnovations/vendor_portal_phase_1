
jQuery('#myCarousel').carousel({
		interval: 0
	
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
