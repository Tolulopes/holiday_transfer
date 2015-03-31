class PackagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @packages = Package.all
  end

  def show
    @package = Package.find(params[:id])
    @hash = Gmaps4rails.build_markers(@package.attractions) do |attraction, marker|
      marker.infowindow render_to_string(:partial => "/packages/my_template", :locals => { :object => attraction})
      marker.lat attraction.latitude
      marker.lng attraction.longitude
      # marker.infowindow gmaps4rails_infowindow
      # marker.infowindow.picture({
      #        "url" => "http://2.bp.blogspot.com/-i7FA9jHK_M8/TzN8UZODwZI/AAAAAAAAAAw/DBis8KYK03A/s1600/camel-safari.jpg",
      #        "width" =>  32,
      #        "height" => 32})
end
    # binding.pry
  end

  def update
  end


# custom controller action
def sell_my_package
  @destination = Destination.create(params.require(:destination).permit(:name))
  @package = Package.create(params.require(:package).permit(:description, :price, :user_id, :status))
  @package.user_id = current_user.id
  @package.save
  @attraction_1 = Attraction.create(params.require(:attractions_1).permit(:name, :description, :location, :date, :package_id))
  @attraction_1.package_id = @package.id
  @attraction_1.save
  @attraction_2 = Attraction.create(params.require(:attractions_2).permit(:name, :description, :location, :date, :package_id))
  @attraction_2.package_id = @package.id
  @attraction_2.save
  @ticket = Ticket.create(params.require(:ticket).permit(:current_location, :destination_id, :ticket_class, :airline, :booking_reference, :baggage_allowance, :departure_time, :arrival_time, :round_trip, :price, :package_id))
  @ticket.destination_id = @destination.id
  @ticket.package_id = @package.id
  @ticket.save
  @hotel = Hotel.create(params.require(:hotel).permit(:name, :address, :checkin, :checkout, :stars, :package_id))
  @hotel.package_id = @package.id
  @hotel.save
  render json: {destination: @destination, package:@package, attraction_1:@attraction_1, attraction_2:@attraction_2, hotel:@hotel, ticket:@ticket}
end


end


