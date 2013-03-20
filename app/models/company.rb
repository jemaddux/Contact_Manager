class Company < ActiveRecord::Base
  attr_accessible :name
  validates :first_name, presence: true
  has_many :phone_numbers, as: :contact
  #has_many :email_addresses

end
