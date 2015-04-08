$('.pagination a').live('click', function(event) { 
	
	//alert("clicked");
	 event.preventDefault();  
  //$('.pagination').html('Data is loading...');  
   $.get(this.href, null, null, 'script');  
   return false;  
 }); 

