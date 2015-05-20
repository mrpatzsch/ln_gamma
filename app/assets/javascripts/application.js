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


$(function() {

  // Display error if destination field is empty

  $('#search_form').submit(function(event) {
    var destination = $('#destination').val();

    if (destination !== "") {
    }
    else {
      $( "#error" ).html("<p style= 'color: red;'>Please enter a destination.</p>" ).show().fadeOut( 4000 );
      event.preventDefault();
    }
    
  });

// Resets video on index page 

  setInterval(function() {
    var video = document.getElementsByClassName('bg-video')[0];
    video.load();
  }, 54000);


// Fa-heart for favorites

  $('.fa-heart').click(function(event) {
    console.log("clicked");
    $(this.parentElement.children[0].children[0]).submit();
  });

//Autocomplete function

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

  $('#price').on('click', function(event) {
    event.preventDefault();

    $.ajax({
      url: "http://api.ean.com/ean-services/rs/hotel/v3/list?geoSearch?minorRev=5&apiKey=6bjgco74rs2j90o5mkhmsabuqe&sig=6bjgco74rs2j90o5mkhmsabuqe8fj76j23ppr001431025260622&cid=55505&locale=en_US&numberOfResults=40&sort=PRICE&_type=json",
      dataType: "json",
      success: function() {
      
      $('.booking-list').html("<li><a class=\"booking-item\" href=\"/hotels/<%= hotel[\"hotelId\"] %>\"><div class=\"row\"><div class=\"col-md-3\"><div class=\"hotel_img\"><img src=\"http://images.travelnow.com/<%= hotel[\"thumbNailUrl\"] %>\" class=\"hotel_thumb\"></div></div><div class=\"col-md-4\"><span>From: </span><span class=\"booking-item-price\"><%= number_to_currency(hotel[\"lowRate\"], :precision => 0) %></span><span>/night</span><br><br><span class=\"btn btn-primary\">Book</span></div></div></a></li>");
        }
      });
    });



  });//end 


