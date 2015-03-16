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
		$('.modal').css('left','25%');
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
		$('.modal').css('left','25%');
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
		$('.modal').css('left','25%');
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
		$('.modal').css('left','25%');
		$('.modal-body').html('');
		$('.modal-body').html(data);
		

	});

}
