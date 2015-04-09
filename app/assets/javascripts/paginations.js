//$("ul").delegate("li.option", "click", function(){
$('.pagination').delegate('.pagination a','click', function(event) { 
//$('.pagination a').on('click', function(event) { 
	
	//alert("clicked");
	 event.preventDefault();  
  //$('.pagination').html('Data is loading...');  
   $.get(this.href, null, null, 'script');  
   return false;  
 }); 

