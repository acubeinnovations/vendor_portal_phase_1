
function Trim(strInput) {
	
    while (true) {
        if (strInput.substring(0, 1) != " ")
            break;
        strInput = strInput.substring(1, strInput.length);
    }
    while (true) {
        if (strInput.substring(strInput.length - 1, strInput.length) != " ")
            break;
        strInput = strInput.substring(0, strInput.length - 1);
    }
   return strInput;
	
}


$('#style_division_id').change(function(){

var division=$(this).val();
styleUsers(division);
});



function styleUsers(division){
var division=division;
$.get("/get_users", {
    division_id:division,
		userrole:'sales'
  },function(data){
		users=data;
		style_sales_id
		select_content="<option value=''>Please select</option>";
		$.each(users,function(k,v){
		select_content+='<option value="'+k+'">'+v+'</option>'
		});
		$('#style_sales_id').html(select_content);
	});

$.get("/get_users", {
    division_id:division,
		userrole:'designer'
  },function(data){
		users=data;
		
		select_content="<option value=''>Please select</option>";
		$.each(users,function(k,v){
		select_content+='<option value="'+k+'">'+v+'</option>'
		});
		$('#style_designer_id').html(select_content);
		
	});

$.get("/get_users", {
    division_id:division,
		userrole:'operationuser'
  },function(data){
		users=data;
		select_content="<option value=''>Please select</option>";
		$.each(users,function(k,v){
		select_content+='<option value="'+k+'">'+v+'</option>'
		});
		$('#style_operationuser_id').html(select_content);
		
	});



}

$('#style_protonumber').keyup(function(){
if($('#style_division_id option:selected').text().indexOf('ECHO') > -1){
$('#style_stylecode').val($('#style_protonumber').val());

}
});
