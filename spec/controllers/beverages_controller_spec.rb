require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BeveragesController do

  # This should return the minimal set of attributes required to create a valid
  # Beverage. As you add validations to Beverage, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "image" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BeveragesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all beverages as @beverages" do
      beverage = Beverage.create! valid_attributes
      get :index, {}, valid_session
      assigns(:beverages).should eq([beverage])
    end
  end

  describe "GET show" do
    it "assigns the requested beverage as @beverage" do
      beverage = Beverage.create! valid_attributes
      get :show, {:id => beverage.to_param}, valid_session
      assigns(:beverage).should eq(beverage)
    end
  end

  describe "GET new" do
    it "assigns a new beverage as @beverage" do
      get :new, {}, valid_session
      assigns(:beverage).should be_a_new(Beverage)
    end
  end

  describe "GET edit" do
    it "assigns the requested beverage as @beverage" do
      beverage = Beverage.create! valid_attributes
      get :edit, {:id => beverage.to_param}, valid_session
      assigns(:beverage).should eq(beverage)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Beverage" do
        expect {
          post :create, {:beverage => valid_attributes}, valid_session
        }.to change(Beverage, :count).by(1)
      end

      it "assigns a newly created beverage as @beverage" do
        post :create, {:beverage => valid_attributes}, valid_session
        assigns(:beverage).should be_a(Beverage)
        assigns(:beverage).should be_persisted
      end

      it "redirects to the created beverage" do
        post :create, {:beverage => valid_attributes}, valid_session
        response.should redirect_to(Beverage.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved beverage as @beverage" do
        # Trigger the behavior that occurs when invalid params are submitted
        Beverage.any_instance.stub(:save).and_return(false)
        post :create, {:beverage => { "image" => "invalid value" }}, valid_session
        assigns(:beverage).should be_a_new(Beverage)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Beverage.any_instance.stub(:save).and_return(false)
        post :create, {:beverage => { "image" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested beverage" do
        beverage = Beverage.create! valid_attributes
        # Assuming there are no other beverages in the database, this
        # specifies that the Beverage created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Beverage.any_instance.should_receive(:update).with({ "image" => "MyString" })
        put :update, {:id => beverage.to_param, :beverage => { "image" => "MyString" }}, valid_session
      end

      it "assigns the requested beverage as @beverage" do
        beverage = Beverage.create! valid_attributes
        put :update, {:id => beverage.to_param, :beverage => valid_attributes}, valid_session
        assigns(:beverage).should eq(beverage)
      end

      it "redirects to the beverage" do
        beverage = Beverage.create! valid_attributes
        put :update, {:id => beverage.to_param, :beverage => valid_attributes}, valid_session
        response.should redirect_to(beverage)
      end
    end

    describe "with invalid params" do
      it "assigns the beverage as @beverage" do
        beverage = Beverage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Beverage.any_instance.stub(:save).and_return(false)
        put :update, {:id => beverage.to_param, :beverage => { "image" => "invalid value" }}, valid_session
        assigns(:beverage).should eq(beverage)
      end

      it "re-renders the 'edit' template" do
        beverage = Beverage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Beverage.any_instance.stub(:save).and_return(false)
        put :update, {:id => beverage.to_param, :beverage => { "image" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested beverage" do
      beverage = Beverage.create! valid_attributes
      expect {
        delete :destroy, {:id => beverage.to_param}, valid_session
      }.to change(Beverage, :count).by(-1)
    end

    it "redirects to the beverages list" do
      beverage = Beverage.create! valid_attributes
      delete :destroy, {:id => beverage.to_param}, valid_session
      response.should redirect_to(beverages_url)
    end
  end

end
