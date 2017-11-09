class Customer < ApplicationRecord
  validates :full_name, :phone_number, :image, :notes, presence:true
  validates :email_address, :uniqueness => true
end
