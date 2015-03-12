
$('#user_userrole').change(function(){
if($(this).val()=='admin' || $(this).val()=='vendor'){
$('#user_division').val('');
$('.select_user_division').hide();
}else{
$('.select_user_division').show();
}
});

if($('#user_userrole').val()=='admin' || $('#user_userrole').val()=='vendor'){
$('#user_division').val('');
$('.select_user_division').hide();
}
