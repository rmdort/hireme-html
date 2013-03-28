(function($, window, undefined){

	$(window).load(function(){

		var BODY = document.body;

		$('.pin').wookmark({
			offset:10,
			itemWidth: 250,
			align: 'left',
		  autoResize: true,
		  container: $('.grid-column-wrapper'),
		  //itemWidth: 0,
		  offset: 20,
		  resizeDelay: 50
		});



		/* Fixes Filter Bar to the Top of the page */

		var filterTop = $('.filters').position().top;

		$(document).bind('scroll', function(){

			var topOffset = $(window).scrollTop();

			if(topOffset > filterTop){
				$(BODY).addClass("fixed");
			}else{
				$(BODY).removeClass("fixed");
			}

		});

		/* Popup Links */

		$('.grid-columns').on('click', 'a', function(e){

			$.facebox({ ajax: this.getAttribute('data-ajax-url') || '/ajax/job-details.html' });

			e.preventDefault();
		});

	});

})(jQuery, window)
