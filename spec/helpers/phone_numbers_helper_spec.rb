require 'spec_helper'

describe PhoneNumbersHelper do
  describe "print_numbers" do

    let :number_a do
      PhoneNumber.new(number: "1234567")
    end

    let :number_b do
      PhoneNumber.new(number: "7654321")
    end

  end  
end
