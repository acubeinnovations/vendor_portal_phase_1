
$('.components').click(function(){

var trackingsheetid=$(this).attr('trackingsheet_id');
getComponents(trackingsheetid);

});



function getComponents(trackingsheetid){
var trackingsheetid=trackingsheetid;
$.get("/components", {
    trackingsheet_id:trackingsheetid
  },function(data){
		
		$('#modal-body').html(data);

	});


}
