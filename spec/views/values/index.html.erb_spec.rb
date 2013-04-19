require 'spec_helper'

describe "values/index" do
  before(:each) do
    assign(:values, [
      stub_model(Value,
        :counter => nil,
        :value => 1
      ),
      stub_model(Value,
        :counter => nil,
        :value => 1
      )
    ])
  end

  it "renders a list of values" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
