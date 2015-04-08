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
	if(scrollAmount<=8336){
		scrollAmount=scrollAmount+170;
		$('.g_Body').animate({
		  scrollLeft: scrollAmount
		}, 100);
	}
}

function scrollMeLeft(){
	//alert(scrollAmount);
	if(scrollAmount>=186){
scrollAmount=scrollAmount-170;
$('.g_Body').animate({
  scrollLeft: scrollAmount
}, 100);
}

}

$('.g_Body').scroll(function(){

	scrollAmount=$('.g_Body').scrollLeft();
	if ($(".open")[0]){
	$('.open').offset({ top: $('.open').prev().offset().top+10 });
	}
	//$('.open').css('margin-top',$('.open').prev().offset().top-$('.open').parent().offset().top-29);
});
//added for tab-end


//autocomplte

$('.g_C span').on('keydown',function(e){
var keyCode = e.keyCode || e.which;
if(!e.shiftKey){
if (keyCode == 27){

$('.ui-customautocomplete').html('');
$('.ui-customautocomplete').removeClass('open');
$('.ui-customautocomplete').css('height','auto');
	$('.ui-customautocomplete').css('overflow-y','hidden');
$('.ui-customautocomplete').hide();

}else if (keyCode != 9){
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
		//parent.next().css('margin-top',parent.offset().top-parent.parent().offset().top-29);
		parent.next().addClass('open');
		parent.next().css('height','130');
		parent.next().css('overflow-y','scroll');
		parent.next().css('overflow-x','hidden');
		parent.next().offset({ top: parent.offset().top+10 });
		parent.next().html(dropdown);
		parent.next().show();
		
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
  
 $(window).ajaxStart(function() {//alert('g');

});

$('.ul-link').on('mousedown',function() {

	$('.ui-customautocomplete').html('');
$('.ui-customautocomplete').removeClass('open');
$('.ui-customautocomplete').css('height','auto');
	$('.ui-customautocomplete').css('overflow-y','hidden');
	$('.ui-customautocomplete').hide();

 });

 
}


 $(window).on('click',function() {

	$('.ui-customautocomplete').html('');
	$('.ui-customautocomplete').removeClass('open');
$('.ui-customautocomplete').css('height','auto');
	$('.ui-customautocomplete').css('overflow-y','hidden');
	$('.ui-customautocomplete').hide();

 });
 

 
 //newly added starts
 i=0;
 $('.g_Cl6 > .g_C').each(function(){
	 if(i!=0){
$(this).find('span').html($(this).find('span').text().replace("(", "<br> ("));
 }i+=1;
 });
 //newly added ends
 
 
 

 
 
 


}

