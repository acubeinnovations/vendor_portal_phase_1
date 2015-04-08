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
		$('.modal').css('width','1300');
		$('.modal').css('left','23%');
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
		$('.modal').css('width','1300');
		$('.modal').css('left','23%');
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
		$('.modal').css('width','1300');
		$('.modal').css('left','23%');
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
		$('.modal').css('width','1300');
		$('.modal').css('left','23%');
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
		$('.modal').css('width','1300');
		$('.modal').css('left','23%');
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
var processmasterid=processmasterid;
$.get("/trackingsheetdocuments", {
    trackingsheetid:trackingsheetid,
		processmasterid:processmasterid
  },function(data){
		$('.modal').css('width','1300');
		$('.modal').css('left','23%');
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
		$('.modal').css('width','1300');
		$('.modal').css('left','23%');
		$('.modal-body').html('');
		$('.modal-body').html(data);
		
	});

}


$('.lockme').on('click',function(){

if(this.checked){
lock='true';
}else{
lock='false';
}
$.get("/lockme",{

 trackingsheet_id:$(this).attr('trackingsheet_id'),
 lock:lock

  },function(data){
		 location.reload();
	});
});

//for checking locking condition
function islocked(me){

if(me.attr('locked')=='true'){
return false;
}else{
return true;
}
}


}
