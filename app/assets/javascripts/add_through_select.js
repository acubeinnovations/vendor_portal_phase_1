
$('.add-through-select').click(function(){
				$(this).parent().next().find('input').val('');
				$(this).parent().next().show();
   			$(this).parent().hide();
		

});


 $(".textfield").on('keyup',function (e){ 
 
 	if (e.keyCode == 13) {
	 addData($(this).val(),$(this));
		e.preventDefault();
	 return false;

	}	if (e.keyCode == 27) {

			$(this).parent().prev().show();
   		$(this).parent().hide();
	}
 
 });

	$('.submit-me,.style-form-submit').on("keyup keypress", function(e) {
		var code = e.keyCode || e.which; 
		if (code  == 13) {               
		  e.preventDefault();
		  return false;
		}
	});

function addData(field,me){
var field=field;
var me=me;
var url=me.attr('url');
$.get(url, {
    field:field
	
  },function(data){
		select_content="<option value=''>Please Select</option>";
		$.each(data,function(k,v){
		select_content+='<option value="'+k+'">'+v+'</option>'
		});
		me.parent().prev().find('.add-select').html(select_content);
		
		me.parent().prev().show();
   		me.parent().hide();
	});
}
