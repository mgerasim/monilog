require 'spec_helper'

describe "values/show" do
  before(:each) do
    @value = assign(:value, stub_model(Value,
      :counter => nil,
      :value => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
