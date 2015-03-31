sellTicket = function(){
 destination_name = $('#destination_name').val()
 airline_name = $('#airline_modal').val()
 current_location = $('#current_modal').val()
 ticket_price = $('#ticket_price').val()
 ticket_destination = $('#ticket_destination').val()
 ticket_class = $('#class_modal').val()
 booking_reference = $('#reference_modal').val()
 baggage_allowance = $('#allowance_modal').val()
 departure_time = $('#departure_modal').val()
 arrival_time = $('#arrival_modal').val()
 round_trip = $('#return_modal').val()
 package_price = $('#price_modal').val()
 attraction_name = $('#attraction_modal').val()
 attraction_description = $('#attraction_description').val()
 attraction_location = $('#location_modal').val()
 attraction_date = $('#date_modal').val()
 hotel_name = $('#hotel_modal').val()
 hotel_address = $('#address_modal').val()
 hotel_checkin = $('#checkin_modal').val()
 hotel_checkout = $('#checkout_modal').val()
 hotel_star = $('#star_modal').val()
 package_description = $('#description_modal').val()

// making a large hash of all form data for the modal so it will create the package, ticket, hotel, and attraction

 data = {
   attractions:{
     name: attraction_name,
     description: attraction_description,
     location: attraction_location,
     date: attraction_date

   },
   ticket:{
     current_location: current_location,
     ticket_class: ticket_class,
     airline: airline_name,
     booking_reference: booking_reference,
     baggage_allowance: baggage_allowance,
     departure_time: departure_time,
     arrival_time: arrival_time,
     round_trip: round_trip,
     price: ticket_price
   },
   package:{
     description: package_description,
     price: package_price
   },
   destination:{
     name: destination_name
   },
   hotel:{
     name: hotel_name,
     address: hotel_address,
     checkin: hotel_checkin,
     checkout: hotel_checkout,
     stars: hotel_star
   }
  }
  $.ajax({
    url: 'packages/sell_my_package',
    method: 'POST',
    dataType: 'json',
    data: data
  }).success(function(data){
    console.log(data);
  $('#DIVIMAPPENDINGTO').append('<h1>Airline:' + data.ticket.airline.name + '</h1>');
  $('#DIVIMAPPENDINGTO').append('<h1>Destination:' + data.destination.name + '</h1>');
  $('#DIVIMAPPENDINGTO').append('<h1>Description:' + data.package.description + '</h1>');
  $('#DIVIMAPPENDINGTO').append('<h1>Price:' + data.ticket.price + '</h1>');
  $('#DIVIMAPPENDINGTO').append('<h1>Attraction:' + data.attraction.description + '</h1>');
  $('#DIVIMAPPENDINGTO').append('<h1>Status:' + data.package.status + '</h1>');

  })
}

// .done(function(response){
//               $.each(response, function(index, value){
//                 console.log(value);
//                 $('#result').append('<h2>' + 'Country: ' + value.name + '</h2>');
//                   $('#result').append('<h3>' + 'Region: ' + value.region + '</h3>');
//                    $('#result').append('<h4>' + 'Capital: ' + value.capital + '</h4>');
//                     $('#result').append('<h5>' + 'Population: ' + value.population + '</h5');
//                       $('#result').append('<h6>' + 'Language: ' + value.languages + '</h6>');
//             })



$(function(){
  $('#sell_ticket').on('click', sellTicket)
});