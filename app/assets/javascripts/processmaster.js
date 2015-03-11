
$('#processmaster_division').change(function(){

var division=$(this).val();
processStyles(division);
});



function processStyles(division){
var division=division;
$.get("/get_styles", {
    division_id:division
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
