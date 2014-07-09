require 'spec_helper'

describe "beverages/show" do
  before(:each) do
    @beverage = assign(:beverage, stub_model(Beverage,
      :image => "Image",
      :name => "Name",
      :price => "9.99",
      :memo => "Memo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image/)
    rendered.should match(/Name/)
    rendered.should match(/9.99/)
    rendered.should match(/Memo/)
  end
end
