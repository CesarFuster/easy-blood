class ContributorsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_description
  before_action :set_amount, only: [:new, :create]

  def new
  end

  def thanks
  end

  def create
    # binding.pry
    customer = StripeTool.create_customer(email: params[:stripeEmail],
      stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id,
      amount: params[:amount],
      description: @description)

    redirect_to thanks_path(amount: params[:amount])
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_contributor_path
  end

  private

  def set_description
    @description = "Doação Easy Blood"
  end

  def set_amount
    @amount = [1000, 2000, 4000, 5000, 10000]
  end

end
