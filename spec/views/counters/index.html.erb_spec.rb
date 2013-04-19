require 'spec_helper'

describe "counters/index" do
  before(:each) do
    assign(:counters, [
      stub_model(Counter,
        :name => "Name",
        :url => "Url",
        :value => 1,
        :site => nil
      ),
      stub_model(Counter,
        :name => "Name",
        :url => "Url",
        :value => 1,
        :site => nil
      )
    ])
  end

  it "renders a list of counters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
