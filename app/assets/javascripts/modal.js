
$(document).keyup(function(e) {

  if (e.keyCode == 27) { 
	$("#close-modal").trigger('click');

	 }  
});

$(window).load(function(){
	
	$('#handle').bind('mousewheel', function(event, delta) { 
        val = this.scrollLeft - (delta * 50); 
        jQuery(this).stop().animate({ 
            scrollLeft: val 
        }, 500); 
        event.preventDefault(); 
    }); 
	
	
	
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

//added for tab-start
$('table td span').on('keydown',function(e){

	var keyCode = e.keyCode || e.which; 

	if (e.shiftKey && keyCode == 9){

			findPrevTabindex($(this).parent().prev());
			e.preventDefault(); 
	
	}else if (keyCode == 9) { 
		 findNextTabindex($(this).parent().next());
			e.preventDefault(); 
   
  }
});
	


function findNextTabindex(next){

if(next.children().is("span")){
$('#'+next.find('span').attr('id')).trigger('click');
scrollMeRight();
}else{
nextspan=next.next();
findNextTabindex(nextspan);
scrollMeRight();
}
}

function findPrevTabindex(prev){

if(prev.children().is("span")){
$('#'+prev.find('span').attr('id')).trigger('click');
scrollMeLeft();
}else{
prevspan=prev.prev();
findPrevTabindex(prevspan);
scrollMeLeft();
}
}
scrollAmount=0;
function scrollMeRight(){
scrollAmount=scrollAmount+60;
$('#handle').animate({
  scrollLeft: scrollAmount
}, 100);


}

function scrollMeLeft(){
scrollAmount=scrollAmount-60;
$('#handle').animate({
  scrollLeft: scrollAmount
}, 100);


}

$('#handle').scroll(function(){

	scrollAmount=$('#handle').scrollLeft();

});
//added for tab-end

    

