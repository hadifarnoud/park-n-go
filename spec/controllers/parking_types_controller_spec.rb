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

describe ParkingTypesController do

  # This should return the minimal set of attributes required to create a valid
  # ParkingType. As you add validations to ParkingType, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ParkingTypesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all parking_types as @parking_types" do
      parking_type = ParkingType.create! valid_attributes
      get :index, {}, valid_session
      assigns(:parking_types).should eq([parking_type])
    end
  end

  describe "GET show" do
    it "assigns the requested parking_type as @parking_type" do
      parking_type = ParkingType.create! valid_attributes
      get :show, {:id => parking_type.to_param}, valid_session
      assigns(:parking_type).should eq(parking_type)
    end
  end

  describe "GET new" do
    it "assigns a new parking_type as @parking_type" do
      get :new, {}, valid_session
      assigns(:parking_type).should be_a_new(ParkingType)
    end
  end

  describe "GET edit" do
    it "assigns the requested parking_type as @parking_type" do
      parking_type = ParkingType.create! valid_attributes
      get :edit, {:id => parking_type.to_param}, valid_session
      assigns(:parking_type).should eq(parking_type)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ParkingType" do
        expect {
          post :create, {:parking_type => valid_attributes}, valid_session
        }.to change(ParkingType, :count).by(1)
      end

      it "assigns a newly created parking_type as @parking_type" do
        post :create, {:parking_type => valid_attributes}, valid_session
        assigns(:parking_type).should be_a(ParkingType)
        assigns(:parking_type).should be_persisted
      end

      it "redirects to the created parking_type" do
        post :create, {:parking_type => valid_attributes}, valid_session
        response.should redirect_to(ParkingType.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved parking_type as @parking_type" do
        # Trigger the behavior that occurs when invalid params are submitted
        ParkingType.any_instance.stub(:save).and_return(false)
        post :create, {:parking_type => {  }}, valid_session
        assigns(:parking_type).should be_a_new(ParkingType)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ParkingType.any_instance.stub(:save).and_return(false)
        post :create, {:parking_type => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested parking_type" do
        parking_type = ParkingType.create! valid_attributes
        # Assuming there are no other parking_types in the database, this
        # specifies that the ParkingType created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ParkingType.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => parking_type.to_param, :parking_type => { "these" => "params" }}, valid_session
      end

      it "assigns the requested parking_type as @parking_type" do
        parking_type = ParkingType.create! valid_attributes
        put :update, {:id => parking_type.to_param, :parking_type => valid_attributes}, valid_session
        assigns(:parking_type).should eq(parking_type)
      end

      it "redirects to the parking_type" do
        parking_type = ParkingType.create! valid_attributes
        put :update, {:id => parking_type.to_param, :parking_type => valid_attributes}, valid_session
        response.should redirect_to(parking_type)
      end
    end

    describe "with invalid params" do
      it "assigns the parking_type as @parking_type" do
        parking_type = ParkingType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ParkingType.any_instance.stub(:save).and_return(false)
        put :update, {:id => parking_type.to_param, :parking_type => {  }}, valid_session
        assigns(:parking_type).should eq(parking_type)
      end

      it "re-renders the 'edit' template" do
        parking_type = ParkingType.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ParkingType.any_instance.stub(:save).and_return(false)
        put :update, {:id => parking_type.to_param, :parking_type => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested parking_type" do
      parking_type = ParkingType.create! valid_attributes
      expect {
        delete :destroy, {:id => parking_type.to_param}, valid_session
      }.to change(ParkingType, :count).by(-1)
    end

    it "redirects to the parking_types list" do
      parking_type = ParkingType.create! valid_attributes
      delete :destroy, {:id => parking_type.to_param}, valid_session
      response.should redirect_to(parking_types_url)
    end
  end

end
