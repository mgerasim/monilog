require 'spec_helper'

describe "values/edit" do
  before(:each) do
    @value = assign(:value, stub_model(Value,
      :counter => nil,
      :value => 1
    ))
  end

  it "renders the edit value form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", value_path(@value), "post" do
      assert_select "input#value_counter[name=?]", "value[counter]"
      assert_select "input#value_value[name=?]", "value[value]"
    end
  end
end
