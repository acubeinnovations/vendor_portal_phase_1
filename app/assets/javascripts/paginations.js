$('.pagination').delegate('.pagination a','click', function(event) { 
	event.preventDefault();  
 $.get(this.href, null, null, 'script');  
   return false;  
 }); 

