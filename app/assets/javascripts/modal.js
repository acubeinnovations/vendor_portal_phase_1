
$(document).keyup(function(e) {

  if (e.keyCode == 27) { 
	$("#close-modal").trigger('click');

	 }  
});

$(window).load(function(){
	
	
	
	
	$('#ts').find('table').find('td').each(function() {
	if(!$(this).children().is("span")){
		if(!$(this).children().is("a")){
		$(this).css('background','#EFEFEF');
		}else{
		$(this).css('background','#FFF');
		}
		}else{
		$(this).css('background','#FFF');
		}
	});

	var max = 0;  	
	$('#ts').find('table').find('td').each(function() {
		max = Math.max($(this).height(), max);
	}).height(max);

	

});


$(document).ready(function() { 
    $('#handle').bind('mousewheel', function(event, delta) { 
        val = this.scrollLeft - (delta * 50); 
        jQuery(this).stop().animate({ 
            scrollLeft: val 
        }, 500); 
        event.preventDefault(); 
    }); 
}); 
