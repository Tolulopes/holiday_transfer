class PackagesController < ApplicationController
  before_action :authenticate_user!
  def index
    @packages = Package.all
  end

  def show
    @package = Package.find(params[:id])

  end

  def new
    @ticket = Ticket.new
  end


  # def edit
  #   @ticket Ticket.find(params[:id])
  # end

  def create
    @ticket = Ticket.new(ticket_params)
end
