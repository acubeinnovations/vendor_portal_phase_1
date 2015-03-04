
$(document).keyup(function(e) {

  if (e.keyCode == 27) { 
	$("#close-modal").trigger('click');

	 }  
});

$(window).load(function(){

$('#ts-table td').each(function() { 
      if(!$(this).children().is("span")){
			 if(!$(this).children().is("a")){

			$(this).css('background','#EFEFEF');

			}
			}
        
});



});
