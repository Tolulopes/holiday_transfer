class PackagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @packages = Package.all
  end

  def show
    @package = Package.find(params[:id])
    @hash = Gmaps4rails.build_markers(@package.attractions) do |attraction, marker|
      marker.lat attraction.latitude
      marker.lng attraction.longitude
    end
  end
end



