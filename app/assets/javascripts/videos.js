$(document).on("page:load", function() {
	$("#toggle_comments").click(function() {
		if( $(".vid_comment").hasClass("hide")) {
			$(".vid_comment").removeClass("hide");
			$("#toggle_comments").html("Hide Comments");
		}else{
			$(".vid_comment").addClass("hide");
			$("#toggle_comments").html("Show Comments");
		}
	});
});