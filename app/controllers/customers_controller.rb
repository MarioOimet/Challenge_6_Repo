class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  end

  def alphabetized
    @customer = Customer.order(:full_name)
  end

  def missing_email
    @customer = Customer.where('email_address = ""')
  end
end
