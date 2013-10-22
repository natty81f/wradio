
$(function() {

	$(".arrow").click(function(){
		var marginLeft = parseInt($("#slider").css("marginLeft"));
		console.log(marginLeft)
		if (marginLeft == -600){
			$("#slider").animate({
				marginLeft : "0px"
			},"slow");
		} else {
			$("#slider").animate({
				marginLeft : "-600px"
			},"slow");
		}
	});
	
});

	
	

