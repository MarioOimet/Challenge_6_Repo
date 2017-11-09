class CustomersController < ApplicationController
  def index
    @customer = Customer.includes(:province).all
  end

  def alphabetized
    @customer = Customer.includes(:province).order(:full_name)
  end

  def missing_email
    @customer = Customer.includes(:province).where('email_address = ""')
  end
end
