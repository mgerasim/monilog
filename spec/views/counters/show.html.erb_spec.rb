require 'spec_helper'

describe "counters/show" do
  before(:each) do
    @counter = assign(:counter, stub_model(Counter,
      :name => "Name",
      :url => "Url",
      :value => 1,
      :site => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Url/)
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
