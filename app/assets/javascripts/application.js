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
$('#search_form').submit(function(event) {
	var destination = $('#destination').val();

	if (destination === "Irvine") {
		event.preventDefault();
		$('#error').html("Something went wrong");
	}
	else {
		$( "#error" ).text( "Not valid!" ).show().fadeOut( 1000 );
  event.preventDefault();
	}
});

setInterval(function() {
var video = document.getElementsByClassName('bg-video')[0];
video.load();
}, 54000);


$(function() {
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
        $( this ).removeClass( "ui-corner-all" ).addClass( "ui-corner-top" );
      },
      close: function() {
        $( this ).removeClass( "ui-corner-top" ).addClass( "ui-corner-all" );
      }
    });
  });

// $(function() {
//     var availableTags = [
//       "San Francisco, CA, United States",
//       "London, England",
//       "New York, New York, United States",
//       "Los Angeles, CA, United States",
//       "Paris, France",
//       "Mumbai, India",
//       "Clojure",
//       "COBOL",
//       "ColdFusion",
//       "Erlang",
//       "Fortran",
//       "Groovy",
//       "Haskell",
//       "Java",
//       "JavaScript",
//       "Lisp",
//       "Perl",
//       "PHP",
//       "Python",
//       "Ruby",
//       "Scala",
//       "Scheme",
//     ];
//     $("#destination").autocomplete({
//       source: availableTags
//     });
//   });