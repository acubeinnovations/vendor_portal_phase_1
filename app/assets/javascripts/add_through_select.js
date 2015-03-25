
$('.add-through-select').click(function(){

if($(this).parent().find('.add-select option:selected').val()=='' && $(this).parent().find('.add-select option:selected').text()!=''){
addData($(this).parent().find('.add-select option:selected').text(),$(this));
}
});



function addData(field,me){
var field=field;
var me=me;
var url=me.attr('url');
$.get(url, {
    field:field
	
  },function(data){
		select_content="<option value=''></option>";
		$.each(data,function(k,v){
		select_content+='<option value="'+k+'">'+v+'</option>'
		});
		me.parent().find('.add-select').html(select_content);
	});
}
