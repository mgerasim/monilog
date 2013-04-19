require 'spec_helper'

describe "counters/new" do
  before(:each) do
    assign(:counter, stub_model(Counter,
      :name => "MyString",
      :url => "MyString",
      :value => 1,
      :site => nil
    ).as_new_record)
  end

  it "renders new counter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", counters_path, "post" do
      assert_select "input#counter_name[name=?]", "counter[name]"
      assert_select "input#counter_url[name=?]", "counter[url]"
      assert_select "input#counter_value[name=?]", "counter[value]"
      assert_select "input#counter_site[name=?]", "counter[site]"
    end
  end
end
