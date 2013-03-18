class PhoneNumber < ActiveRecord::Base
  attr_accessible :number, :person_id
  validates :number, presence: true
  validates :person, presence: true
  belongs_to :person
end
