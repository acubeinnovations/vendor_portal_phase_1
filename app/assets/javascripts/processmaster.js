
$('#processmaster_division,#processmaster_season_id').change(function(){

var division=$('#processmaster_division').val();
var season=$('#processmaster_season_id').val();
if(division!='' && season!=''){
processStyles(division,season);
}else{
$('#processmaster_style_ids').html('');
}

});


$('#processmaster_division').change(function(){

var division=$('#processmaster_division').val();
processContactUser(division);

});

function processStyles(division,season){
var division=division;
var season=season;
$.get("/get_styles", {
    division_id:division,
		season:season
  },function(data){
		styles=data;
		select_content="";
		//select_content="<option value=''>Please select</option>";
		$.each(styles,function(k,v){
		select_content+='<option value="'+k+'">'+v+'</option>'
		});
		$('#processmaster_style_ids').html(select_content);
	});




}

function processContactUser(division){
$.get("/get_users", {
    division_id:division,
		userrole:'operationuser'
  },function(data){
		users=data;
		
		select_content="<option value=''>Please select</option>";
		$.each(users,function(k,v){
		select_content+='<option value="'+k+'">'+v+'</option>'
		});
		$('#processmaster_contact').html(select_content);
		
	});

}
