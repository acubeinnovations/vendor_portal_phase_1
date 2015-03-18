$('.pagination a').on("click", function (event) { 
	 event.preventDefault();  
  //$('.pagination').html('Data is loading...');  
   $.get(this.href, null, null, 'script');  
   return false;  
 }); 

