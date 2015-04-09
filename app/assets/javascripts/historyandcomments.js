function loadHistoryAndComments(){
	$('.history').on('click',function(){
if(islocked($(this))){
var trackingsheetid=$(this).attr('trackingsheetid');
getHistory(trackingsheetid);
}else{
return false;
}
});

$('.comments').click(function(){
if(islocked($(this))){
var me=$(this);
var trackingsheetid=$(this).attr('trackingsheetid');
getComments(trackingsheetid,me);
}else{
return false;
}
});



function getHistory(trackingsheetid){
var trackingsheetid=trackingsheetid;
$.get('/vendorportal/get_history',{
    trackingsheetid:trackingsheetid
  },function(data){
 content='<div id="modal_history" style="float:left;">';
for(i=0;i<data.length;i++){
	date = new Date(data[i].updated_at);
	updated_date = (date.getMonth() + 1) + '-' + date.getDate() + '-' +  date.getFullYear() +  '  '  + date.getHours() + ':' + date.getMinutes();
content+='<div style="float:left;"><i class="icon-stop"></i> '+data[i].tabname+' Tab   Updated by '+data[i].useremail+', at '+updated_date+'</div> <br> <hr>';
}
content+='</div>';
$('.modal-body').html(content);
$('.modal_head').html('History &nbsp;');
});
}

function getComments(trackingsheetid,me){ 
var trackingsheetid=trackingsheetid;
me=me;
$.get('/vendorportal/get_comments',{
   trackingsheetid:trackingsheetid
 },function(data){
 content='<div id="modal_history">';
 
 for(i=0;i<data.length;i++){
//content+='<div style="float:left;"> <i class="icon-stop"></i>  Added by '+data[i].useremail+', at '+data[i].updated_at+'</div> <br> <div style="float:left;padding-left:15px;"> '+data[i].comments+' </div><br> <hr>';
	date = new Date(data[i].updated_at);
	updated_date = (date.getMonth() + 1) + '-' + date.getDate() + '-' +  date.getFullYear() +  '  '  + date.getHours() + ':' + date.getMinutes();
	content+='<div style="float:left"> <i class="icon-stop"></i>  Added by '+data[i].useremail+', at '+updated_date+'</div> <br> <div style="float:left;padding-left:15px;"> '+data[i].comments+' </div><br> <hr>';
 	  		

 	
 	}
content+='</div>';
$('.modal-body').html(content);
$('.modal_head').html('Comments &nbsp;');
bestinplace_comment=me.parent().find('div').html();
$('.modal-body').append(bestinplace_comment);
});
}


function islocked(me){

if(me.attr('locked')=='true'){
return false;
}else{
return true;
}
}

	}
