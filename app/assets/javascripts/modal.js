function initExcelTS(){

$(document).keyup(function(e) {

  if (e.keyCode == 27) { 
	$("#close-modal").trigger('click');

	 }  
});



//added for tab-start
$('.g_C span').on('keydown',function(e){

	var keyCode = e.keyCode || e.which; 

	if (e.shiftKey && keyCode == 9){

			findPrevTabindex($(this).parent().parent().prev(),$(this).parent().attr('row'));
			e.preventDefault(); 
	
	}else if (keyCode == 9) { 
		 findNextTabindex($(this).parent().parent().next(),$(this).parent().attr('row'));
			e.preventDefault(); 
   
  }
});
	


function findNextTabindex(next,row){
if(row>=0){
//alert(next.attr('class'));
if(next.find('.g_R'+row).children().is("span")){
$('#'+next.find('.g_R'+row).find('span').attr('id')).trigger('click');
scrollMeRight();
}else{
nextspan=next.next();
scrollMeRight();
findNextTabindex(nextspan,row);

}
}
}

function findPrevTabindex(prev,row){
if(row>=0){
if(prev.find('.g_R'+row).children().is("span")){
$('#'+prev.find('.g_R'+row).find('span').attr('id')).trigger('click');
scrollMeLeft();
}else{
prevspan=prev.prev();
scrollMeLeft();
findPrevTabindex(prevspan,row);

}
}
}
scrollAmount=0;
function scrollMeRight(){

scrollAmount=scrollAmount+170;
$('.g_Body').animate({
  scrollLeft: scrollAmount
}, 100);


}

function scrollMeLeft(){

scrollAmount=scrollAmount-170;
$('.g_Body').animate({
  scrollLeft: scrollAmount
}, 100);


}

$('.g_Body').scroll(function(){

	scrollAmount=$('.g_Body').scrollLeft();

});
//added for tab-end


//autocomplte

$('.g_C span').on('keyup',function(e){
var keyCode = e.keyCode || e.which; 
if(!e.shiftKey){
	if (keyCode != 9){
me=$(this).children().children();
parent=$(this);
if(parent.attr('data-bip-attribute')=='vendorfulldata'){
id=me.attr('id');
$.get("/custom_search", {
    term: me.val()
  },function(data){
		vendors=data;
		var dropdown='';
	
		$.each(data,function(email,vname){	
		dropdown+="<li><a class='ul-link' insert-to="+id+" vendor="+vname+">"+vname+"</a></li>";
		});
		
		parent.next().html(dropdown);
		$('.ui-customautocomplete').show();
		init();
	});
}
}
}
});


function init(){

$('.ul-link').on('mousemove',function(){ 
var selected_id=$(this).attr('insert-to');
var selected_vendor=$(this).attr('vendor');
$('#'+selected_id).val(selected_vendor);

});
  
  
}

$( document ).ajaxStart(function() {
$('.ui-customautocomplete').html('');
$('.ui-customautocomplete').hide();
});

}

