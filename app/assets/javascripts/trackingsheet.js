function loadTrackingheet(){
$('.components').click(function(){

var trackingsheetid=$(this).attr('trackingsheet_id');
getComponents(trackingsheetid);

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

var trackingsheetid=$(this).attr('trackingsheet_id');
getHardwares(trackingsheetid);

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

var trackingsheetid=$(this).attr('trackingsheet_id');
getTestings(trackingsheetid);

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

var trackingsheetid=$(this).attr('trackingsheet_id');
getCostsheets(trackingsheetid);

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

var trackingsheetid=$(this).attr('trackingsheetid');
getImages(trackingsheetid);

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

var trackingsheetid=$(this).attr('trackingsheetid');
var processmasterid=$(this).attr('processmasterid');
getDocuments(trackingsheetid,processmasterid);

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

var trackingsheetid=$(this).attr('trackingsheetid');
getSamples(trackingsheetid);

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



}
