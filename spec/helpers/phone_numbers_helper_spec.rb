require 'spec_helper'

describe PhoneNumbersHelper do
  describe "print_numbers" do

    let :number_a do
      PhoneNumber.new(number: "1234567")
    end

    let :number_b do
      PhoneNumber.new(number: "7654321")
    end

    it "outputs a comma-separated list of phone numbers" do
      phone_numbers = [number_a, number_b]
      result = "<ul><li>1234567</li><li>7654321</li></ul>"
      print_numbers(phone_numbers).should == result
    end

    it "outputs a single phone number" do
      print_numbers([number_a]).should == "<ul><li>1234567</li></ul>"
    end
  end  
end
