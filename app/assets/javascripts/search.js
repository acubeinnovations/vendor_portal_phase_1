
$('#default_search input').keyup(function(){

$.get($('#default_search').attr('action'),$('#default_search').serialize(),null,'script');
return false;


});


$('#default_search select').change(function(){

$.get($('#default_search').attr('action'),$('#default_search').serialize(),null,'script');
return false;


});