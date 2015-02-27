
$(document).keyup(function(e) {

  if (e.keyCode == 27) { 
	$("#close-modal").trigger('click');

	 }  
});

$(window).load(function(){
if($('.best_in_place').html()=='-'){
$('.best_in_place').html('Click To Add Content');
$('.best_in_place').attr('data-bip-placeholder','Click To Add Content');
}

});
