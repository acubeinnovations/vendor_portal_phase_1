function loadTrackingheet(){
$('.components').click(function(){
if(islocked($(this))){
var trackingsheetid=$(this).attr('trackingsheet_id');
getComponents(trackingsheetid);
}else{
return false;
}
});



function getComponents(trackingsheetid){
var trackingsheetid=trackingsheetid;
$.get("/components", {
    trackingsheet_id:trackingsheetid
  },function(data){
		$('.modal').css('width','80%');
		$('.modal').css('left','10%');
		$('.modal').css('top','13%');
		$('.modal-body').html('');
		$('.modal-body').html(data);
		

	});

}


$('.hardwares').click(function(){
if(islocked($(this))){
var trackingsheetid=$(this).attr('trackingsheet_id');
getHardwares(trackingsheetid);
}else{
return false;
}
});



function getHardwares(trackingsheetid){
var trackingsheetid=trackingsheetid;
$.get("/hardwares", {
    trackingsheet_id:trackingsheetid
  },function(data){
		$('.modal').css('width','80%');
		$('.modal').css('left','11%');
		$('.modal').css('top','13%');
		$('.modal-body').html('');
		$('.modal-body').html(data);
		

	});

}

$('.testings').click(function(){
if(islocked($(this))){
var trackingsheetid=$(this).attr('trackingsheet_id');
getTestings(trackingsheetid);
}else{
return false;
}
});



function getTestings(trackingsheetid){
var trackingsheetid=trackingsheetid;
$.get("/testings", {
    trackingsheet_id:trackingsheetid
  },function(data){
		$('.modal').css('width','80%');
		$('.modal').css('left','10%');
		$('.modal').css('top','13%');
		$('.modal-body').html('');
		$('.modal-body').html(data);
		

	});

}


$('.costsheets').click(function(){
if(islocked($(this))){
var trackingsheetid=$(this).attr('trackingsheet_id');
getCostsheets(trackingsheetid);
}else{
return false;
}
});



function getCostsheets(trackingsheetid){
var trackingsheetid=trackingsheetid;
$.get("/costsheets", {
    trackingsheet_id:trackingsheetid
  },function(data){
		$('.modal').css('width','80%');
		$('.modal').css('left','10%');
		$('.modal').css('top','13%');
		$('.modal-body').html('');
		$('.modal-body').html(data);
		

	});

}


$('.images').click(function(){
if(islocked($(this))){
var trackingsheetid=$(this).attr('trackingsheetid');
getImages(trackingsheetid);
}else{
return false;
}
});



function getImages(trackingsheetid){
var trackingsheetid=trackingsheetid;
$.get("/trackingsheetimages", {
    trackingsheetid:trackingsheetid
  },function(data){
		$('.modal').css('width','80%');
		$('.modal').css('left','10%');
		$('.modal').css('top','13%');
		$('.modal-body').html('');
		$('.modal-body').html(data);
		
	});

}

$('.documents').click(function(){
if(islocked($(this))){
var trackingsheetid=$(this).attr('trackingsheetid');
var processmasterid=$(this).attr('processmasterid');
getDocuments(trackingsheetid,processmasterid);
}else{
return false;
}

});



function getDocuments(trackingsheetid,processmasterid){
var trackingsheetid=trackingsheetid;
var processmasterid=processmasterid;100%
$.get("/trackingsheetdocuments", {
    trackingsheetid:trackingsheetid,
		processmasterid:processmasterid
  },function(data){
		$('.modal').css('width','80%');
		$('.modal').css('left','10%');
		$('.modal').css('top','13%');
		$('.modal-body').html('');
		$('.modal-body').html(data);
		
	});

}


$('.samples').click(function(){
if(islocked($(this))){
var trackingsheetid=$(this).attr('trackingsheetid');
getSamples(trackingsheetid);
}else{
return false;
}
});



function getSamples(trackingsheetid){
var trackingsheetid=trackingsheetid;
$.get("/samples", {
    trackingsheet_id:trackingsheetid
  },function(data){
		$('.modal').css('width','80%');
		$('.modal').css('left','10%');
		$('.modal').css('top','13%');
		$('.modal-body').html('');
		$('.modal-body').html(data);
		
	});

}

$('.done').on('click',function(){

var action=$( "#ts-actions option:selected" ).val();
if(action=='none'){
return false;
}else if(action=='lock'){
lockme();
}else if(action=='unlock'){
unlockme();
}else if(action=='export'){
exportme();
}



});


function unlockme(){

/* newly added for check atleast one ts */
var countchecked = $("input[type=checkbox]:checked").length;
if(countchecked >= 1) 
{
/* newly added for check atleast one ts */
i=1;
$('.lockme').each(function(index){
if(this.checked){
lock='false';

$.get("/lockme",{

 trackingsheet_id:$(this).attr('trackingsheet_id'),
 lock:lock

  },function(){
	
	});

}
if($('.lockme').length-1==index){
		
	setInterval(function(){
    location.reload();
    },2000);
			
	}


i+=1;
});
 
}else{
	alert("Please select a trackingsheet");
}
}

$('.selectall').on('click',function(){
if(this.checked){
$('.lockme').prop('checked','checked');
}else{
$('.lockme').removeAttr('checked','checked');
}

});

function lockme(){
	var countchecked = $("input[type=checkbox]:checked").length;
	if(countchecked >= 1) 
	{
	
i=1;
$('.lockme').each(function(index){
if(this.checked){
lock='true';

$.get("/lockme",{

 trackingsheet_id:$(this).attr('trackingsheet_id'),
 lock:lock

  },function(){
	

	});
}

	if($('.lockme').length-1==index){
		
	setInterval(function(){
    location.reload();
    },2000);
			
	}

	i+=1;
	
});
   
} else{
	
	alert("Please select a trackingsheet");
}

}


//$('.exportme').on('click',function(){
function exportme(){
/* newly added for check atleast one ts */
var countchecked = $("input[type=checkbox]:checked").length;
if(countchecked >= 1) 
{
/* newly added for check atleast one ts */	

$('.lockme').each(function(){
if(this.checked){

id=$(this).attr('trackingsheet_id');
window.open('/tocsv.csv?id='+id, '_blank');

}
});

}else {
	alert("Please select a trackingsheet");
}
}

//for checking locking condition
function islocked(me){

if(me.attr('locked')=='true'){
return false;
}else{
return true;
}
}


}
