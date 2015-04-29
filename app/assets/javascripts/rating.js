$(document).ready(function(){
	Rating();
});
 
var Rating = function(){
	$('.star').raty({
	    readOnly: true,
	    score: $(this).data("rating"),
	    path: '/assets'
	  });

		$('.id_star').raty({
	    score: $(this).data("rating"),
	    path: '/assets'
	});


};
