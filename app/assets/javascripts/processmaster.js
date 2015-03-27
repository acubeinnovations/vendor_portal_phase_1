
$('#processmaster_division,#processmaster_season_id').change(function(){

var division=$('#processmaster_division').val();
var season=$('#processmaster_season_id').val();
if(division!='' && season!=''){
$('#processmaster_style_ids').html('');
processStyles(division,season);
}else{
$('#processmaster_styles').html('');
$('#processmaster_style_ids').html('');
}

});

$('.process_protonumber').on('click',function(){

var division=$('#processmaster_division').val();
var season=$('#processmaster_season_id').val();
if(division!='' && season!=''){

optionFlip();


}else{
$('#processmaster_styles').html('');
$('#processmaster_style_ids').html('');
}

});



function optionFlip(){

$('#processmaster_styles option').each(function(i, selected){ 
if($('.process_protonumber').is(':checked')){
$(selected).text($(selected).attr('protonumber'));

}else{
$(selected).text($(selected).attr('stylenumber'));

}

});

}

$('#processmaster_division').change(function(){

var division=$('#processmaster_division').val();
processContactUser(division);

});

function processStyles(division,season){
var division=division;
var season=season;
$('#processmaster_styles').html('');

$.get("/get_styles", {
    division_id:division,
		season:season
  },function(data){
		styles=data;
		select_content="";
		//select_content="<option value=''>Please select</option>";
		 for(i=0;i<styles.length;i++){
			if($('.process_protonumber').is(':checked')){
				select_content+='<option value="'+styles[i]._id.$oid+'" stylenumber="'+styles[i].stylecode+'" protonumber="'+styles[i].protonumber+'" >'+styles[i].protonumber+'</option>';
			}else{
				select_content+='<option value="'+styles[i]._id.$oid+'" stylenumber="'+styles[i].stylecode+'" protonumber="'+styles[i].protonumber+'">'+styles[i].stylecode+'</option>';
			}
			}
		$('#processmaster_styles').html(select_content);
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



$('.style-add-to-multiselect').click(function(){
$('#processmaster_styles :selected').each(function(i, selected){ 
   	$('#processmaster_style_ids').append('<option  value="'+$(selected).val()+'" stylenumber="'+$(selected).attr('stylenumber')+'" protonumber="'+ $(selected).attr('protonumber')+'">'+ $(selected).attr('protonumber')+'------'+$(selected).attr('stylenumber')+'</option>');
$(selected).remove();
});

});


$('.style-remove-from-multiselect').click(function(){
$('#processmaster_style_ids :selected').each(function(i, selected){ 
	if($('.process_protonumber').is(':checked')){
   	$('#processmaster_styles').append('<option  value="'+$(selected).val()+'" stylenumber="'+$(selected).attr('stylenumber')+'" protonumber="'+ $(selected).attr('protonumber')+'">'+ $(selected).attr('protonumber')+'</option>');
	}else{
	$('#processmaster_styles').append('<option  value="'+$(selected).val()+'" stylenumber="'+$(selected).attr('stylenumber')+'" protonumber="'+ $(selected).attr('protonumber')+'">'+ $(selected).attr('stylenumber')+'</option>');
}
	
$(selected).remove();
});

});

$('.save-style').click(function(){
$('#processmaster_style_ids option').prop('selected', true);
$('.submit-me').submit();
});
