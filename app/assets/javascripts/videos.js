$(function() {
	$("#toggle_comments").click( function() {
		if( $(".comments").hasClass("hide")) {
			$(".comments").removeClass("hide");
			$("#toggle_comments").html("Hide Comments");
		} else {
			$(".comments").addClass("hide");
			$("#toggle_comments").text("Show Comments")
		}
	});
});