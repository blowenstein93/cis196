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

/*	$("#home").hover( function(){
		if ( $("#home").css("background-color") == "rgb(247, 159, 129)") {
			$("#home").css("background-color", "#FFFFFF");
		} else {
			$("#home").css("background-color", "#F79F81");
		}
	});
});

/*
$(function() {
	$("#home").hover( function(){
		
		$("#home").css("background-color", "#F79F81");

	});
});


$(document).on("page:load", function(){
	$(function() {
		$("#home").click( function(){
			if( $("#home").hasClass(".active")) {
				$("#home").removeClass(".active");
			} else {
				$("#home").addClass(".active");
			}
		});
	});
});

*/
$(document).on("page:load", function(){
	$(function() {
//		$("#left_options").click(function() {
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
		//alert("Done Switch");
//		});
	});
});



