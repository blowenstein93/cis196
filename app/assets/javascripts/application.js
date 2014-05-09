// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on("page:load", function(){
	$(function() {
		var current_uri = window.location.pathname;
			switch (current_uri) {
			case "/":
			  $("#home").addClass("active");
			  break;
			case "/users/index":
			  $("#users").addClass("active");
			  break;
			case "/videos":
			  $("#videos").addClass("active");
			  break;
			case "/comments":
			  $("#comments").addClass("active");
			  break;
			};
	});
});
/*
$(function(){
		$("#home").hover(
			function(){ 
				$(".nav_bar").css({background-color:#99FF33});
			},
			function() {
				$("#home").css("background-color", "#ffff9c");
			}
		});
});
*/





