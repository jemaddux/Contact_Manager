require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :first_name => "First Name",
        :last_name => "Last Name"
      ),
      stub_model(Person,
        :first_name => "First Name",
        :last_name => "Last Name"
      )
    ])
  end

end
