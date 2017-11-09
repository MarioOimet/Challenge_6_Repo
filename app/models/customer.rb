class Customer < ApplicationRecord
  belongs_to :province, :class_name => 'Province', :foreign_key => 'province_id'
  validates :full_name, :phone_number, :image, :notes, presence:true
  #validates :email_address, :uniqueness => true
end
