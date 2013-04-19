require 'spec_helper'

describe "counters/edit" do
  before(:each) do
    @counter = assign(:counter, stub_model(Counter,
      :name => "MyString",
      :url => "MyString",
      :value => 1,
      :site => nil
    ))
  end

  it "renders the edit counter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", counter_path(@counter), "post" do
      assert_select "input#counter_name[name=?]", "counter[name]"
      assert_select "input#counter_url[name=?]", "counter[url]"
      assert_select "input#counter_value[name=?]", "counter[value]"
      assert_select "input#counter_site[name=?]", "counter[site]"
    end
  end
end
