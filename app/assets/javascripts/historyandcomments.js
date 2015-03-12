$('.history').click(function(){
	var trackingsheetid=$(this).attr('trackingsheetid');
	getHistory(trackingsheetid);
	
});

$('.comments').click(function(){
	var me=$(this);
	var trackingsheetid=$(this).attr('trackingsheetid');
	getComments(trackingsheetid,me);
	
});



function getHistory(trackingsheetid){
var trackingsheetid=trackingsheetid;
$.get("/get_history", {
    trackingsheetid:trackingsheetid
  },function(data){
	  content='<div id="modal_history" style="float:left">';
												
	$.each(data,function(updated,email){
		content+='<div> Updated by '+email+' at'+updated+'</div> <br> <hr>';
	});
	content+='</div>';
	$('.modal-body').html(content);
	$('.modal_head').html('History &nbsp;');
	});
}

function getComments(trackingsheetid,me){
	var trackingsheetid=trackingsheetid;
	me=me;
	$.get("/get_comments", {
	    trackingsheetid:trackingsheetid
	  },function(data){
		  content='<div id="modal_history">';
		  
		  for(i=0;i<data.length;i++){
			
			content+='<div style="float:left">'+data[i].comments+' Updated by '+data[i].useremail+' at'+data[i].updated_at+'</div> <br> <hr>';
	  		
	  		}
			content+='</div>';
			$('.modal-body').html(content);
			$('.modal_head').html('Comments &nbsp;');
			bestinplace_comment=me.parent().find('div').html();
			$('.modal-body').append(bestinplace_comment);
		});
}


