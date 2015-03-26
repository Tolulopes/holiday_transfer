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
  end
end




