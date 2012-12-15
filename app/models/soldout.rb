class Soldout < ActiveRecord::Base
  attr_accessible :card_number, :customer_email, :customer_name, :cvv, :expiry_date_month, :expiry_date_year
  validates :card_number, :customer_email, :customer_name, :cvv, :expiry_date_month, :expiry_date_year, :presence => true
end
