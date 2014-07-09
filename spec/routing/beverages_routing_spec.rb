require "spec_helper"

describe BeveragesController do
  describe "routing" do

    it "routes to #index" do
      get("/beverages").should route_to("beverages#index")
    end

    it "routes to #new" do
      get("/beverages/new").should route_to("beverages#new")
    end

    it "routes to #show" do
      get("/beverages/1").should route_to("beverages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/beverages/1/edit").should route_to("beverages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/beverages").should route_to("beverages#create")
    end

    it "routes to #update" do
      put("/beverages/1").should route_to("beverages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/beverages/1").should route_to("beverages#destroy", :id => "1")
    end

  end
end
