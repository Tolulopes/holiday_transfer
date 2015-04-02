sellTicket = function(e) {
  e.preventDefault();
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
  attraction_name_1 = $('#attraction_modal_1').val()
  attraction_description_1 = $('#attraction_description_1').val()
  attraction_location_1 = $('#location_modal_1').val()
  attraction_date_1 = $('#date_modal_1').val()
  attraction_name_2 = $('#attraction_modal_2').val()
  attraction_description_2 = $('#attraction_description_2').val()
  attraction_location_2 = $('#location_modal_2').val()
  attraction_date_2 = $('#date_modal_2').val()
  hotel_name = $('#hotel_modal').val()
  hotel_address = $('#address_modal').val()
  hotel_checkin = $('#checkin_modal').val()
  hotel_checkout = $('#checkout_modal').val()
  hotel_star = $('#star_modal').val()
  package_description = $('#description_modal').val()

  // making a large hash of all form data for the modal so it will create the package, ticket, hotel, and attraction

  data = {
   attractions_1:{
     name: attraction_name_1,
     description: attraction_description_1,
     location: attraction_location_1,
     date: attraction_date_1
   },
   attractions_2:{
     name: attraction_name_2,
     description: attraction_description_2,
     location: attraction_location_2,
     date: attraction_date_2
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
  url: '/packages/sell_my_package',
  method: 'POST',
  dataType: 'json',
  data: data
}).done(function(data){
  // location.reload();
  console.log(data);
  console.log('hello dave');
  var new_row = '<tr>'
                  + '<td>' + data.ticket.airline.name + '</td>'
                  + '<td><a href="/packages/'+ data.destination.id + '"' + data.destination.name + '</td>'
                  + '<td>' + data.package.description + '</td>'
                  + '<td>' + data.ticket.price + '</td>'
                  + '<td>' + data.attraction_1.description + '</td>'
                  + '<td>' + data.package.status + '</td>'
                '</tr>'
  console.log(new_row)
  $('.package_listing').append(new_row);

  })
}


  $(function(){
    $('#sell_ticket').on('click', sellTicket)
});