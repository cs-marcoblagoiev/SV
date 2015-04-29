$(document).ready(function(){
	Rating();
});
 
var Rating = function(){
	$('.star').raty({
	    readOnly: true,
	    score: $(this).data("rating"),
	    path: '/assets'
	  });

	
	$('.id_star').each(function(){
		var holder = $(this);

		holder.raty({
		    score: $(this).data("rating"),
		    path: '/assets',
		      click: function(score, evt) {
			    $.ajax({
			      url: '/ratings',
			      type: 'POST',
			      data: { 
			      	score: score, 
			      	car_id: holder.data("car-id")
			      }
			    }).done(function (data){});
			  }
		});
	});		

};

$(document).on('page:load', Rating);