class ChargesController < ApplicationController

  def create

    @amount = 10_00
    @user = current_user

    @user.update_attribute :role, "premium"
    @user.save!

    customer = Stripe::Customer.create(
      email: current_user.email,
      card: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: Amount.default,
      description: "BigMoney Membership - #{current_user.email}",
      currency: 'usd',
    )

    flash[:notice] = "Thanks for subscribing!"
    redirect_to welcome_index_path

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_charge_path

  end

  def new
    @stripe_btn_data = {
      key: "#{
        Rails.configuration.stripe[:publishable_key]
      }",
      description: "BigMoney Membership - #{current_user.name}",
      amount: Amount.default
    }
  end


end
