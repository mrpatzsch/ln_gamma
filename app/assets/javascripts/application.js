// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


// if (city === "") {
//	event.preventDefault()
// stop form from submitting
// iserror? ==== true?
//}

//$(default).html("something went wrong")
// send an error message 

// autocomplete = event handler passed as object 
// source: 
//
$(function(){
  $('#submit_button').click(function(event) {
  	var city = $('#city').val();

  	if (city === "") {
  		event.preventDefault();
  		$('#error').html("Something went wrong");
  	}
  });

  $('.fa-heart').click(function(event) {
    console.log("clicked"); 
    $(this.parentElement.children[0].children[0]).submit()
  });
});
