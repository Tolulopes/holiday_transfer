class ChargesController < ApplicationController

  def new
  end

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @amount = @ticket.package.price*100


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

    @ticket.package.user_id = current_user.id
    @ticket.package.status = "Sold"
    @ticket.package.save

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end


