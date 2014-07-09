require 'spec_helper'

describe "beverages/new" do
  before(:each) do
    assign(:beverage, stub_model(Beverage,
      :image => "MyString",
      :name => "MyString",
      :price => "9.99",
      :memo => "MyString"
    ).as_new_record)
  end

  it "renders new beverage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", beverages_path, "post" do
      assert_select "input#beverage_image[name=?]", "beverage[image]"
      assert_select "input#beverage_name[name=?]", "beverage[name]"
      assert_select "input#beverage_price[name=?]", "beverage[price]"
      assert_select "input#beverage_memo[name=?]", "beverage[memo]"
    end
  end
end
