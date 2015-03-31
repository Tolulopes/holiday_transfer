class ChargesController < ApplicationController

  def new
  end

  def create
    @package = Package.find(params[:package_id])
    @amount = @package.ticket*100


    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :card  => params[:stripeToken]
      )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => "Flight Ticket",
      :currency    => 'gbp'
      )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end


