require 'spec_helper'

describe PhoneNumber do
  before(:each) do
    @person = Person.create(first_name: "Sample", last_name: "Name")
    @phone_number = @person.phone_numbers.create(number: "2024605555")
  end
 
  it "should be valid" do
    @phone_number.should be_valid
  end

  it "should be associated with a contact" do
    @phone_number.should respond_to(:contact)
  end

  it "should not be valid without a number" do
    @phone_number.number = nil
    @phone_number.should_not be_valid
  end

  it "should not be valid without a contact" do
    @phone_number.contact = nil
    @phone_number.should_not be_valid
  end

 
end
