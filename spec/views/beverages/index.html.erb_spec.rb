require 'spec_helper'

describe "beverages/index" do
  before(:each) do
    assign(:beverages, [
      stub_model(Beverage,
        :image => "Image",
        :name => "Name",
        :price => "9.99",
        :memo => "Memo"
      ),
      stub_model(Beverage,
        :image => "Image",
        :name => "Name",
        :price => "9.99",
        :memo => "Memo"
      )
    ])
  end

  it "renders a list of beverages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Memo".to_s, :count => 2
  end
end
