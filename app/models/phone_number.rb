class PhoneNumber < ActiveRecord::Base
  attr_accessible :number, :contact_id
  validates :number, presence: true
  validates :contact, presence: true
  belongs_to :contact, polymorphic: true
end
