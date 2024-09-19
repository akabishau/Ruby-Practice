########################################
# constants in modules
########################################

# config.rb
module AppConfig
  API_ENDPOINT = "https://api.example.com"
  MAX_CONNECTIONS = 5
  TIMEOUT = 30  # in seconds
end

# main.rb
require_relative 'config'
puts "Connecting to #{AppConfig::API_ENDPOINT}"


########################################
# classes in modules
########################################

# app/models/payments/bank_transfer.rb
module Payments
  class BankTransfer
    def process_payment(amount)
      "Processing payment of $#{amount} using Bank Transfer."
    end
  end
end

# app/models/payments/stripe.rb
module Payments
  class Stripe
    def process_payment(amount)
      "Processing payment of $#{amount} using Stripe."
    end
  end
end

# app/models/payments/paypal.rb
module Payments
  class PayPal
    def process_payment(amount)
      "Processing payment of $#{amount} using PayPal."
    end
  end
end

# app/controllers/payments_controller.rb
class PaymentsController < ApplicationController
  def process_payment
    amount = params[:amount].to_f

    # Use the Stripe class inside the Payments namespace
    stripe_payment = Payments::Stripe.new
    @stripe_message = stripe_payment.process_payment(amount)

    # Use the PayPal class inside the Payments namespace
    paypal_payment = Payments::PayPal.new
    @paypal_message = paypal_payment.process_payment(amount)

    render :show
  end
end

# <!-- app/views/payments/show.html.erb -->
# <h1>Payment Process</h1>

# <p><%= @stripe_message %></p>
# <p><%= @paypal_message %></p>