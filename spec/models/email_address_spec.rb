require 'spec_helper'

describe EmailAddress do
  before(:each) do
    @person = Person.create(first_name: "Sample", last_name: "Name")
    @email_address = @person.email_addresses.create(address: "foo@bar.com", person_id: 1)
  end

  it "is be valid" do
    @email_address.should be_valid
  end

  it "isn't not be valid without a first name" do
    @person.first_name = nil
    @person.should_not be_valid
  end

  it "isn't not be valid without an address" do
    @email_address.address = nil
    @email_address.should_not be_valid
  end

  it "isn't not be valid without a person_id" do
    @email_address.person_id = nil
    @email_address.should_not be_valid
  end
end
