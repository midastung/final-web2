(function ($) {
 "use strict";

/*----------------------------
	product-slider
------------------------------ */  
	$('.product-slider').slick({
		speed: 300,
		slidesToShow: 4,
		slidesToScroll: 1,
		prevArrow: "<button type='button' class='slick-next'><i class='fas fa-chevron-right'></i></button>",
		nextArrow: "<button type='button' class='slick-next'><i class='fas fa-chevron-right'></i></button>",
		responsive: [
			{  breakpoint: 1169,  settings: { slidesToShow: 3,  }  },
			{  breakpoint: 969,   settings: { slidesToShow: 3,  }  },
			{  breakpoint: 767,   settings: { slidesToShow: 1, }   },
			{  breakpoint: 480,   settings: { slidesToShow: 1, }   },
		]
	}); 
/*--------------------	
	shop page manu dropdown	
---------------------------- */	
	$('.dropdown .option-btn').on('click', function(){
		if($(this).siblings('.dropdown-menu').hasClass('active')){
			$(this).siblings('.dropdown-menu').removeClass('active').slideUp();
			$(this).removeClass('active');
		}
		else{
			$('.dropdown .dropdown-menu').removeClass('active').slideUp();
			$('.dropdown .option-btn').removeClass('active');
			$(this).addClass('active');
			$(this).siblings('.dropdown-menu').addClass('active').slideDown();
		}
	});



})(jQuery);