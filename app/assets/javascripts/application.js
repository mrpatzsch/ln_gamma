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

$(function() {
$('#search_form').submit(function(event) {
	var destination = $('#destination').val();

	if (destination !== "") {
	}
	else {
		$( "#error" ).html("<p style= 'color: red;'>Please enter a destination.</p>" ).show().fadeOut( 4000 );
  event.preventDefault();
	}
});

setInterval(function() {
var video = document.getElementsByClassName('bg-video')[0];
video.load();
}, 54000);


    function log( message ) {
      $( "#info" ).text( message ).prependTo( "#destination" );
      $( "#destination" ).scrollTop( 0 );
    }
 
    $( "#destination" ).autocomplete({
      source: function( request, response ) {
        $.ajax({
          url: "http://gd.geobytes.com/AutoCompleteCity",
          dataType: "jsonp",
          data: {
            q: request.term
          },
          success: function( data ) {
            response( data );
          }
        });
      },
      minLength: 3,
      open: function() {
        $( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top", "something" );
      },
      close: function() {
        $( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all", "something" );
      }
    });
  });


