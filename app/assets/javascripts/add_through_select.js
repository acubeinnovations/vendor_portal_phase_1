
$('.add-through-select').click(function(){




        $(this).parent().next().show();
   		$(this).parent().hide();
		alert($(this).parent().attr('class'));

});


 $(".textfield").on('keyup',function (e){ 
 
 	if (e.keyCode == 13) { addData($(this).val(),$(this));
	 return false; }
 
 	
	
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
		me.parent().parent().find('dropdown').find('.add-select').html(select_content);
		
		me.parent().parent().find('dropdown').show();
   		me.parent().hide();
	});
}
